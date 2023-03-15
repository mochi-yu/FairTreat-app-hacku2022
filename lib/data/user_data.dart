class UserData {
  String userName;
  bool isHost;

  UserData({
    required this.userName,
    required this.isHost,
  });

  @override
  String toString() {
    return userName;
  }
}
