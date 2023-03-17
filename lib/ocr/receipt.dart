import 'dart:math';
import 'dart:convert';
import 'content_node.dart';
import '../data/item_data.dart';
import '../data/user_data.dart';


class Receipt {

  // 縦横それぞれの誤差修正の閾値
  double X_EPS = 0.04;
  double Y_EPS = 0.01;

  List<String> ngWords = ['小計', '合計', '税', '現金', '釣銭', '番号', '%', '％', '支払', '店', '釣り', '預り', '商品券'];
  List<String> altPrice = ['セット'];

  // レシートの内容をグラフで管理
  late List<List<int>> edge;  // <- NOTE: 必ず高さでsort済みで格納
  late List<ContentNode> node;

  // グラフのroot, 常に高さでsort済み
  List<int> root = [];

  // グラフ作成時にグラフを分割する文字
  List<String> spl_req = [' '];

  // グラフ作成時に置換するもの
  List<List<String>> rep_req = [
    // カッコを統一
    ['（', '('],
    ['）', ')'],
    ['『', '('],
    ['』', ')'],
    ['「', '('],
    ['」', ')'],
    [']', ')'],
    ['[', '('],

    // 全角数字を半角に
    ['１', '1'],
    ['２', '2'],
    ['３', '3'],
    ['４', '4'],
    ['５', '5'],
    ['６', '6'],
    ['７', '7'],
    ['８', '8'],
    ['９', '9'],
    ['０', '0'],

    //除去
    ['(', ''],
    [')', ''],
    ['¥', ''],
    [',', ''],
    ['*', ''],
    ['※', '']
  ];

  // コンストラクタ
  Receipt(String jsonString, bool isiOS){
    
    // iOSの場合は判定誤差を小さく
    if(isiOS == true){
      X_EPS = 0.04;
      Y_EPS = 0.01;
    }
    
    Iterable l = json.decode(jsonString);
    node = List<ContentNode>.from(l.map((model)=> ContentNode.fromJson(model)));
    edge = List.generate(node.length, (i)=> []);

    // トップレベルの位置を取得してindexをnode側に告知
    double topLevelX = 1.0;
    for (var i = 0; i < node.length; i++) {
      topLevelX = min(node[i].minX, topLevelX);
      node[i].index = i;
    }

    // rootにトップレベルのノードを紐付け
    for (var i = 0; i < node.length; i++) {
      if((topLevelX-node[i].minX).abs() < X_EPS){
        addEdgeRoot(i);
      }
    }
    // rootから伸びる全てのnodeの関係を再帰的に構築
    for (var next in root) {
      reflexiveAddNextNode(next, -1, 0.0, 1.0);
    }

    formatGraph(spl_req, rep_req);
    
  }


  // 次のノードを再帰的に追加するメソッド
  void reflexiveAddNextNode(int currentIndex, int beforeIndex /* -1:root */, double left, double bottom){
    
    ContentNode currentNode = node[currentIndex];
    double nextLeft = left;


    // *** 縦方向(小要素)のノードの追加 ***
    double posX = 1.0;
    List<int> parentEdge = (beforeIndex == -1)? root:edge[beforeIndex];
    List<int> children = [];


    // for debug
    // if(getNextNodeIndex(parentEdge, currentIndex) == -1){
    //   print('(min:${node[currentIndex].minY}, max:${node[currentIndex].maxY}) ${node[currentIndex].text} parent:$parentEdge, (${node[currentIndex].text} ~)');
    // }else{
    //   print('(min:${node[currentIndex].minY}, max:${node[currentIndex].maxY}) ${node[currentIndex].text} parent:$parentEdge, (${node[currentIndex].text} ~ ${node[getNextNodeIndex(parentEdge, currentIndex)].text})');
    // }
    

    // 同じX座標の次のコンテンツまでの間のコンテンツを列挙する
    for (var nextIndex = 0; nextIndex < node.length; nextIndex++) {
      ContentNode nextNode = node[nextIndex];

      // 今のコンテンツが同じx座標のコンテンツの中で一番下だった場合は下限なし
      // そうでない場合は下限を同じx座標のひとつ下のコンテンツまでとする
      // 領域が重複している場合があるため真ん中で判定する必要がある
      double bias = (currentNode.maxY-currentNode.minY)/2.0;
      bool nodeCondition = (currentNode.minY+bias < nextNode.minY) && (nextNode.maxY < bottom) && left < nextNode.minX;
      if(parentEdge.last != currentIndex)nodeCondition &=(nextNode.maxY < node[getNextNodeIndex(parentEdge, currentIndex)].minY);

      if(nodeCondition == true)posX = min(node[nextIndex].minX, posX);
    }

    // childコンテンツが存在した場合、posXと同じインデントのものをedgeに追加する
    if(posX < 1.0){
      for (var nextIndex = 0; nextIndex < node.length; nextIndex++) {
        ContentNode nextNode = node[nextIndex];

        // bool 式の意味は上記
        double bias = (currentNode.maxY-currentNode.minY)/2.0;
        bool nodeCondition = (currentNode.minY+bias < nextNode.minY) && (nextNode.maxY < bottom) && left < nextNode.minX;
        if(parentEdge.last != currentIndex)nodeCondition &=(nextNode.maxY < node[getNextNodeIndex(parentEdge, currentIndex)].minY);
        
        if(nodeCondition == true && nextIndex != currentIndex){
          if((posX-node[nextIndex].minX).abs() < X_EPS){
            addEdge(currentIndex, nextIndex);
            children.add(nextIndex);
          }
        }
      }
    }



    // *** 横方向のノードの追加 ***
    int nextIndexFinal = -1;

    // 全列挙して同じ高さの右にあるものを候補に追加
    for (var nextIndex = 0; nextIndex < node.length; nextIndex++) {
    
      // 自分自身ではない
      if(nextIndex != currentIndex){

        ContentNode nextNode = node[nextIndex];

        // 同じ高さで最も右にあるもの
        if((currentNode.minY-node[nextIndex].minY).abs() < Y_EPS && (currentNode.maxY-node[nextIndex].maxY).abs() < Y_EPS){
          if(currentNode.maxX < nextNode.minX){
            if(nextIndexFinal < 0){
              nextIndexFinal = nextIndex;
            }else{
              if(nextNode.minX < node[nextIndexFinal].minX){
                nextIndexFinal = nextIndex;
                nextLeft = nextNode.minX;
              }
            }
          }
        }
      }
    }

    double nextBottom = (getNextNodeIndex(parentEdge, currentIndex) == -1)? bottom:node[getNextNodeIndex(parentEdge, currentIndex)].minY;
    if(nextIndexFinal >= 0){
      // 同じ高さの右に接続可能なノードあれば再帰的に追加
      addEdge(currentIndex, nextIndexFinal);
      reflexiveAddNextNode(nextIndexFinal, currentIndex, nextLeft, nextBottom);

    }
    // 今の階層でノードのchildノードの追加が完了したら全てのchildノードに対して再帰的に追加
    for (var nextChild in children) {
      reflexiveAddNextNode(nextChild, currentIndex, nextLeft, nextBottom);
    }
    
  }

  
  // ノードを整形する
  void formatGraph(List<String> split, List<List<String>> replace){
    
    for (var i = 0; i < node.length; i++) {

      // 置換
      for (var repElem in replace) {
        node[i].text = node[i].text.replaceAll(repElem[0], repElem[1]);
      }
      
      // ノードの分割
      for (var spElem in split) {
        List<String> split_ret = node[i].text.split(spElem);
        if(split_ret.length >= 2){
          // print(split_ret);
          List<int> nextNodes = edge[i];  // 分割前のノードの行き先
          for (var j = 0; j < split_ret.length; j++) {
    
            int currentNodeIndex;

            if(j == 0){
              // 元ノードは初めの文字に変更し、ノード番号はそのまま
              node[i].text = split_ret[0];
              currentNodeIndex = i;
            }else{
              // 元のノード以外はノードを追加し、ノード番号は最も大きい(新しい)もの
              node.add(ContentNode(0, 0, 0, 0, split_ret[j]));
              edge.add([]);
              currentNodeIndex = node.length-1;
            }

            if(j == split_ret.length-1){
              // 最終分割ノードは分割前ノードの行き先
              edge[currentNodeIndex] = nextNodes;
            }else{
              // それ以外は次のノード
              edge[currentNodeIndex] = [node.length];
            }
          
          }
        }
      }

    }
  }


  // 親ノードをもとに、現在のノードの次についているノードのインデックスを返す(currentIndexが最後: -1)
  int getNextNodeIndex(List<int> parentEdge, int currentIndex){
    if(parentEdge.last == currentIndex)return -1;
    for (var i = 0; i < parentEdge.length; i++) {
      if(parentEdge[i] == currentIndex){
        return parentEdge[i+1];
      }
    }
    return -1;
  }


  // 順序を保ったままedgeを追加する
  void addEdge(int from, int to){
    // TODO: binary serch で高速化
    for (var i = 0; i < edge[from].length; i++) {
      if(node[from].minY > node[to].minY){
        edge[from].insert(i, to);
        return;
      }
    }
    edge[from].add(to);
  }


  // 順序を保ったままedgeを追加する :root版
  void addEdgeRoot(int to){
    // TODO: binary serch で高速化
    for (var i = 0; i < root.length; i++) {
      if(node[root[i]].minY > node[to].minY){
        root.insert(i, to);
        return;
      }
    }
    root.add(to);
  }

  // 注文情報を取り出し
  List<ItemData> getInfo(UserData myself){

    List<ItemData> info  = [];

    void _reflexiveGetInfo(int index, String history, int amount){

      // 末端ノードが数値かつhistoryが空文字列でない
      if(edge[index].isEmpty == true && history != '' ){
        // 数字である
        if(int.tryParse(node[index].text.toString()) != null){
          for (var i = 0; i < amount; i++) {
            info.add(ItemData(itemName: history, price: int.parse(node[index].text), payUser: [myself], id: 0));
          } 
        }
        // else{
        //   // 代替可能ワードである
        //   for (var altWord in altPrice) {
        //     if(node[index].text.contains(altWord)){
        //       info.add({history:node[index].text});
        //       break;
        //     }
        //   }
        // }
      }else{
        // ノードが末端でないときはreafまで進める
        for (var next in edge[index]) {
          // NGワードが入っていればそこで終了
          bool hasNGword = false;
          for (var ngWord in ngWords) {
            if(node[index].text.contains(ngWord)){
              hasNGword = true;
              break;
            }
          }
        // if(hasNGword == false)_reflexiveGetInfo(next, '$history ${node[index].text}', amount);


          // 非末端ノードが個数部分だった場合は個数を設定して伝播
          // 個数部の判定は装飾文字を削除してそれが数字なら
          List<String> inAmount = ['点', '※', '*', '個'];
          String nodeText = node[index].text;
          for (var prefix in inAmount) {
            nodeText.replaceAll(prefix, '');
          }

          if(hasNGword == false){
            if (int.tryParse(nodeText.toString()) != null) {
              _reflexiveGetInfo(next, history, amount);
            }else{
              _reflexiveGetInfo(next, '$history ${node[index].text}', amount);
            }
          }
        }
      } 
    }
    for (var elem in root) {
     _reflexiveGetInfo(elem, '', 1); 
    }
    return info;
  }

  // ノード間の関係を可視化(DFS)
  void showGraph({int index = -1, String state = '(root)'}){
    if(index < 0){
      for (var next in root) {
        showGraph(index: next, state: '$state -> ${node[next].text}');
      }
    }else{
      if(edge[index].isEmpty == true){
        print('$state :(reaf)');
      }else{
        for (var next in edge[index]) {
          showGraph(index: next, state: '$state -> ${node[next].text}');
        }
      }
    }
  }

}