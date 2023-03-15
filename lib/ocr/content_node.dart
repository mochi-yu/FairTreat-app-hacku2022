// OCR した未加工のデータが入るクラス
class ContentNode {

  final double minX;
  final double maxX;
  final double minY;
  final double maxY;
  
  String text;
  int index = 0;

  // コンストラクタ
  ContentNode(this.minX, this.maxX, this.minY, this.maxY, this.text);


  // Json -> RawData
  ContentNode.fromJson(Map<String, dynamic> json)
      : minX = json['minX'],
        maxX = json['maxX'],
        minY = json['minY'],
        maxY = json['maxY'],
        text = json['text'];

  // RawData -> Json
  Map<String, dynamic> toJson() =>{
    'minX': minX,
    'maxX': maxX,
    'minY': minY,
    'maxY': maxY,
    'text': text
  };

  void show(){
    print("minX: $minX, 'maxX': $maxX, 'minY': $minY, 'maxY': $maxY, 'text': '$text'");
  }

}