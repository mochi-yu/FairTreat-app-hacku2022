class UserData {
  String userName;
  int userID;
  bool isHost;

  UserData({
    required this.userName,
    required this.isHost,
    required this.userID,
  });

  @override
  String toString() {
    return userName + ", ";
  }
}
