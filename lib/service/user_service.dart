import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_login/models/user_model.dart';

class UserService {
  static Future<void> createUser(UserModel user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("user", jsonEncode(user.toJson()));
  }

  static Future<String> login(String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userString = prefs.getString("user");
    if (userString!.isEmpty) return "";
    UserModel user = UserModel.fromJson(jsonDecode(userString));
    if (username == user.username && password == user.password) {
      return user.name;
    } else {
      return "";
    }
  }
}
