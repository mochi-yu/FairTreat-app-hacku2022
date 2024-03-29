import 'package:flutter/material.dart';
import '../grpc/export_fairtreat_protos.dart';
import 'user_data.dart';

class ItemData {
  String itemName;
  // int amount;
  int price;
  List<UserData> payUser;
  int id;

  ItemData({
    required this.itemName,
    required this.price,
    required this.payUser,
    required this.id,
  });

  Item itemDataToItem() {
    return Item(
      id: id,
      name: itemName,
      price: price,
      owners: payUserToUserList(),
    );
  }

  List<User> payUserToUserList() {
    List<User> users = [];

    for(int i = 0; i < payUser.length; i++) {
      users.add(payUser[i].userDataToUser());
    }

    return users;
  }
}

class ItemDataNotifer extends ChangeNotifier {
  late ItemData _itemData;
  
  // データの初期化
  // 初めはpayUserを全てホストで登録する。
  ItemDataNotifer(ItemData itemdata) {
    _itemData = itemdata;
  }

  // ゲッター
  ItemData get getItemData => _itemData;

  // 商品名・金額の変更
  void updateItemData({required String newItemName, required int newPrice}) {
    print("call UpdateItemData.");
    if(newItemName != _itemData.itemName || newPrice != _itemData.price) {
      _itemData.itemName = newItemName;
      _itemData.price = newPrice;
      print("Update item data.");
      notifyListeners();
    }
  }

  // 支払うユーザの変更
  void updatePayUser(List<UserData> newPayUser) {
    if(newPayUser != _itemData.payUser) {
      _itemData.payUser = newPayUser;
      print("Update pay user.");
      notifyListeners();
    }
  }

}