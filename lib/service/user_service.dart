import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_login/models/user_model.dart';

class UserService {
  static Future<void> createUser(UserModel user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("user", jsonEncode(user.toJson()));
  }
}
