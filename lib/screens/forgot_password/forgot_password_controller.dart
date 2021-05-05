import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:simple_login/screens/login/login.dart';
import 'package:simple_login/service/user_service.dart';

class ForgotPasswordController extends GetxController {
  void onSubmit(GlobalKey<FormState> formKey, String username, String password,
      BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        bool success = await UserService().resetPassword(username, password);
        if (success) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
            (Route<dynamic> route) => false,
          );
        }
      } catch (e) {
        print("Reset password.");
      }
    }
  }

  String? usernameValidator(String? username) {
    if (username!.isEmpty) {
      return "กรุณาระบุชื่อบัญชี";
    } else {
      return null;
    }
  }

  String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      return "กรุณาระบุรหัสผ่าน";
    } else {
      return null;
    }
  }
}
