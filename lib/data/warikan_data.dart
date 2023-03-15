import 'package:flutter/material.dart';
import 'user_data.dart';
import 'item_data.dart';

class WarikanData {
  String roomID;
  UserData hostUser;
  List<UserData> guestList;
  List<ItemData> itemList;

  WarikanData({
    required this.roomID,
    required this.hostUser,
    required this.guestList,
    required this.itemList,
  });
}

class WarikanDataNotifer extends ChangeNotifier {
  late WarikanData _warikanData;

  // データの初期化
  WarikanDataNotifer({required WarikanData warikan}) {
    _warikanData = warikan;
  }

  // ゲッター
  WarikanData get getWarikanData => _warikanData;
  List<UserData> get getUserList => _warikanData.guestList;
  List<ItemData> get getItemList => _warikanData.itemList;
  UserData get getHostUser => _warikanData.hostUser;

  // 参加しているユーザの変更
  void addJoiningUser(UserData user) {
    _warikanData.guestList = [..._warikanData.guestList, user];
    print("Add new user.");
    notifyListeners();
  }

  // 支払うユーザの更新
  void updatePayUser(List<UserData> users, int index) {
    _warikanData.itemList[index].payUser = users;
    print("Update pay user.");
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
    _warikanData.itemList.remove(item);
    notifyListeners();
  }
}
