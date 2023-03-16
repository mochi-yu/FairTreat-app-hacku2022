import '../grpc/export_fairtreat_protos.dart';

class UserData {
  String userName;
  int userID;
  bool isHost;

  UserData({
    required this.userName,
    required this.isHost,
    required this.userID,
  });

  User userDataToUser() {
    return User(id: userID, name: userName);
  }

  @override
  String toString() {
    return userName + ", ";
  }
}
