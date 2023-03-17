import 'package:flutter/material.dart';
import '../grpc/export_fairtreat_protos.dart';
import 'user_data.dart';
import 'item_data.dart';

class WarikanData {
  String roomID;
  UserData myself;
  UserData hostUser;
  List<UserData> guestList;
  List<ItemData> itemList;
  bool isOpen = true;

  WarikanData({
    required this.roomID,
    required this.hostUser,
    required this.guestList,
    required this.itemList,
    required this.myself,
  });
}

class WarikanDataNotifer extends ChangeNotifier {
  late WarikanData _warikanData;
  late GrpcClient cl;

  // データの初期化
  WarikanDataNotifer({required WarikanData warikan}) {
    cl = GrpcClient();
    _warikanData = warikan;
    _listenConnectBill();
  }

  // ゲッター
  WarikanData get getWarikanData => _warikanData;
  List<UserData> get getUserList => _warikanData.guestList;
  List<ItemData> get getItemList => _warikanData.itemList;
  UserData get getHostUser => _warikanData.hostUser;

  // ConnectBillのデータを検知するStreamをListen
  void _listenConnectBill() {
    listenBill(cl, _warikanData).listen((event) async {
      print('call');
      if(event.type == BILL_CHANGE_TYPE.GUEST) {
        print('GUEST');
        // _warikanData.guestList = await sendGetUserList(_warikanData, cl);
        updateJoinUser();
      } else if(event.type == BILL_CHANGE_TYPE.ITEM) {
        updatePayUserFromServe(event.id);
      } else if(event.type == BILL_CHANGE_TYPE.CONFIRM) {
        _warikanData.isOpen = false;
        notifyListeners();
      }
    });
  }

  // 参加しているユーザの更新
  void updateJoinUser() async {
    _warikanData.guestList = await sendGetUserList(_warikanData, cl);
    print("Update join user.");
    notifyListeners();
  }

  // For debug. 手動でのユーザの追加
  void addJoiningUser(UserData user) {
    _warikanData.guestList = [..._warikanData.guestList, user];
  }

  // 支払うユーザの取得
  void updatePayUserFromServe(int id) async {
    for(int i = 0; i < _warikanData.itemList.length; i++) {
      if(_warikanData.itemList[i].id == id) {
        _warikanData.itemList[i].payUser = await sendGetItemOwnerList(_warikanData, cl, id);
        print("Update pay user from Serve.");
        break;
      }
    }
    notifyListeners();
  }

  // 支払うユーザの更新
  void updatePayUser(List<UserData> users, int index) {
    // 所持している支払うユーザの配列を初期化
    _warikanData.itemList[index].payUser = users;
    print("Update pay user.");

    // 支払うユーザの更新をサーバに送信
    print("更新をサーバに送信します");
    sendSetItemOwner(_warikanData, cl, _warikanData.itemList[index]).then((value) { print(value); });

    notifyListeners();
  }

  // 商品の追加
  void addItem(ItemData item) {
    _warikanData.itemList = [..._warikanData.itemList, item];
    print("Add new item.");
    notifyListeners();
  }

  // 商品リストの追加
  void addItemList(List<ItemData> itemList) {
    _warikanData.itemList = [..._warikanData.itemList, ...itemList];
    print("Add some new items.");
    notifyListeners();
  }

  // 商品の削除
  void clearItem(ItemData item) {
    for(int i = 0; i < _warikanData.itemList.length; i++) {
      if(item.itemName == _warikanData.itemList[i].itemName) {
        _warikanData.itemList.removeAt(i);
      }
    }
    notifyListeners();
  }
}

// ConnectBillのデータをリッスンするStreamの作成
Stream<ConnectBillResponse> listenBill(GrpcClient cl, WarikanData wada) async* {
  final responseStream = cl.client.connectBill(
    ConnectBillRequest()
      ..id = wada.roomID
      ..hostName = wada.hostUser.userName
  );

  await for (final response in responseStream) {
    print("サーバの更新を取得");
    yield response;
  }
}