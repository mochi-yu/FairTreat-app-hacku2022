import 'package:grpc/grpc.dart';
import '../data/export_data.dart';
import 'export_fairtreat_protos.dart';

class GrpcClient {
  late ClientChannel channel;
  late FairTreatClient client;
  String address;
  int port = 50001;

  GrpcClient({this.address = 'suwageeks.org', this.port = 50001}) {
    channel = ClientChannel(
      address,
      port: port,
      options: const ChannelOptions(
        // TLSを無効に
        credentials: ChannelCredentials.insecure(),
      ),
    );

    client = FairTreatClient(channel);
  }
}

// CreateBillを送信。ルームを作成する場合に使用
Future<WarikanData> sendCreateBill(WarikanData wada, GrpcClient cl) async {
  try {
    final response = await cl.client.createBill(
      CreateBillRequest(
        hostName: wada.hostUser.userName,
        items: itemDataListToItems(wada.itemList)
      ),
    );

    final response2 = await cl.client.addUser(
      AddUserRequest(
        id: response.billId,
        name: response.host.name,
      )
    );

    wada.roomID = response.billId;
    wada.hostUser.userID = response2.guest.id;
    wada.guestList[0].userID = response2.guest.id;
    wada.isOpen = true;
  } catch(e) {
    print('Caught error: $e');
  }

  await cl.channel.shutdown();

  return wada;
}

// ルームの情報を取得。ルームへ参加するときに使用。
Future<WarikanData> sendGetBill(String id, GrpcClient cl, UserData myself) async {
  WarikanData wada = WarikanData(roomID: id, hostUser: UserData(userName: "", userID: -1, isHost: false), guestList: [], itemList: [], myself: myself);
  try {
    final response = await cl.client.getBill(
      GetBillRequest(id: wada.roomID)
    );

    wada.hostUser = userToUserData(response.bill.host);
    wada.guestList = usersToUserDataList(response.bill.guests);
    wada.itemList = itemsToItemDataList(response.bill.items);
  } catch(e) {
    print('Caught error in sendGetBitt: $e');
  } finally {
    cl.channel.shutdown();
  }

  return wada;
}

// ConfirmBillを送信。ルームの割り勘を終えるときに使用。
Future<List<ResultData>> sendConfirmBill(WarikanData wada, GrpcClient cl) async {
  List<ResultData> result = [];
  try {
    final response = await cl.client.confirmBill(
      ConfirmBillRequest()..id = wada.roomID
    );

    if(response.status) {
      result = await sendGetConfirmBill(wada, cl);
    }
  } catch(e) {
    print('Caught error in sendConfirmBill: $e');
  } finally {
    await cl.channel.shutdown();
  }

  return result;
}

// 支払う料金の一覧を取得。
Future<List<ResultData>> sendGetConfirmBill(WarikanData wada, GrpcClient cl) async {
  GetConfirmBillResponse response = GetConfirmBillResponse();
  List<ResultData> result = [];

  try {
    response = await cl.client.getConfirmBill(
      GetConfirmBillRequest(id: wada.roomID)
    );

    for(int i = 0; i < response.count; i++) {
      result.add(payPriceToResultData(response.payPrices[i]));
    }
  } catch(e) {
    print("Caught error in sendGetConfirmBill: $e");
  }

  return result;
}

// AddUserを送信。ユーザが参加するときに使用。
Future<bool> sendAddUser(String id, GrpcClient cl, UserData myself) async {
  AddUserResponse response = AddUserResponse();
  try {
    response = await cl.client.addUser(
      AddUserRequest(id: id, name: myself.userName)
    );
  } catch(e) {
    print("Caught error in sendAddUser: $e");
  }

  return response.status;
}

// GuestListを取得。参加ユーザが更新されたときに使用。
Future<List<UserData>> sendGetUserList(WarikanData wada, GrpcClient cl) async {
  GetUsersListResponse response = GetUsersListResponse();
  List<UserData> users = [];
  try {
    response = await cl.client.getUsersList(
      GetUsersListRequest(id: wada.roomID)
    );
    
    UserData temp;
    for(int i = 0; i < response.count; i++) {
      if(wada.hostUser.userID == response.users[i].id) {
        temp = userToUserData(response.users[i]);
        temp.isHost = true;
        users.add(temp);
      } else {
        users.add(userToUserData(response.users[i]));
      }
    }
  } catch(e) {
    print("Caught error in sendGetUserList: $e");
  }

  return users;
}

// SetItemOwnerを送信。支払うユーザの情報を更新するときに使用。
Future<bool> sendSetItemOwner(WarikanData wada, GrpcClient cl, ItemData item) async {
  SetItemOwnerResponse response = SetItemOwnerResponse();
  try {
    response = await cl.client.setOwners(
      SetItemOwnerRequest(owners: userDataListToUsers(item.payUser))
      ..id = wada.roomID
      ..itemId = item.id
    );
  } catch(e) {
    print("Caught error in sendConfirmBill: $e");
  } finally {
    await cl.channel.shutdown();
  }

  return response.status;
}

// 支払う人のリストを取得。支払う人の更新がサーバ側から知らされたときに使用。
Future<List<UserData>> sendGetItemOwnerList(WarikanData wada, GrpcClient cl, int itemId) async {
  GetItemOwnersResponse response = GetItemOwnersResponse();
  List<UserData> payUser = [];

  try {
    response = await cl.client.getItemOwnersList(
      GetItemOwnersRequest(id: wada.roomID, itemId: itemId)
    );
    
    UserData temp;
    for(int i = 0; i < response.count; i++) {
      if(wada.hostUser.userID == response.owners[i].id) {
        temp = userToUserData(response.owners[i]);
        temp.isHost = true;
        payUser.add(temp);
      } else {
        payUser.add(userToUserData(response.owners[i]));
      }
    }
  } catch(e) {
    print("Caught error in sendGetItemOwnerList: $e");
  }

  return payUser;
}



//** ここから下はデータのパーサ */

List<Item> itemDataListToItems(List<ItemData> itemsList) {
  List<Item> items = [];

  for(int i = 0; i < itemsList.length; i++) {
    items.add(itemsList[i].itemDataToItem());
  }

  return items;
}

List<User> userDataListToUsers(List<UserData> userList) {
  List<User> users = [];

  for(int i = 0; i < userList.length; i++) {
    users.add(userList[i].userDataToUser());
  }

  return users;
}

UserData userToUserData(User user) {
  return UserData(
    userName: user.name,
    isHost: false,
    userID: user.id,
  );
}

ResultData payPriceToResultData(PayPrice price) {
  return ResultData(price: price.price, user: userToUserData(price.user));
}

List<ItemData> itemsToItemDataList(List<Item> items) {
  List<ItemData> result = [];
  for(int i = 0; i < items.length; i++) {
    result.add(itemToItemData(items[i]));
  }

  return result;
}

List<UserData> usersToUserDataList(List<User> users) {
  List<UserData> result = [];
  for(int i = 0; i < users.length; i++) {
    result.add(userToUserData(users[i]));
  }

  return result;
}

ItemData itemToItemData(Item item) {
  return ItemData(
    itemName: item.name,
    price: item.price,
    payUser: usersToUserDataList(item.owners),
    id: item.id
  );
}