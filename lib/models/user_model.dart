class UserModel {
  late String name;
  late String username;
  late String password;

  UserModel({
    required this.name,
    required this.username,
    required this.password,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['username'] = username;
    _data['password'] = password;
    return _data;
  }
}
