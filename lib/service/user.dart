import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_login/models/user.dart';

class UserService {
  static Future<String> login(String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // mock register
    UserModel user = UserModel(
      name: "ภัทรพล",
      username: "muyonz",
      password: "12341234",
    );
    await prefs.setString("user", jsonEncode(user.toJson()));

    String? userString = prefs.getString("user");
    UserModel userModel = UserModel.fromJson(jsonDecode(userString!));
    if (userModel.username == username && userModel.password == password) {
      return userModel.name;
    } else {
      throw Exception("Not have user.");
    }
  }
}
