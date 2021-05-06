import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_login/models/user.dart';

class UserService {
  static Future<String> login(String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userString = prefs.getString("user");
    UserModel userModel = UserModel.fromJson(jsonDecode(userString!));
    if (userModel.username == username && userModel.password == password) {
      return userModel.name;
    } else {
      throw Exception("Not have user.");
    }
  }

  static Future<void> register({
    required String name,
    required String username,
    required String password,
  }) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    UserModel user = UserModel(
      name: name,
      username: username,
      password: password,
    );
    await prefs.setString("user", jsonEncode(user.toJson()));
  }
}
