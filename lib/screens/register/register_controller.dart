import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:simple_login/models/user_model.dart';
import 'package:simple_login/screens/login/login.dart';
import 'package:simple_login/service/user_service.dart';

class RegisterController extends GetxController {
  void onSubmit(GlobalKey<FormState> formKey, String name, String username,
      String confirmPassword, BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        UserModel user = UserModel(
          name: name,
          username: username,
          password: confirmPassword,
        );

        await UserService().createUser(user);
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
          (Route<dynamic> route) => false,
        );
      } catch (e) {
        print("Register failed.");
      }
    }
  }

  String? passwordValidator(String? password) {
    if (password!.isEmpty) {
      return "กรุณาระบุรหัสผ่าน";
    } else {
      return null;
    }
  }

  String? confirmPasswordValidator(String? password, String? confirmPassword) {
    if (confirmPassword!.isEmpty) {
      return "กรุณาระบุรหัสผ่าน";
    } else if (confirmPassword != password) {
      return "รหัสผ่านไม่ตรงกัน";
    } else {
      return null;
    }
  }

  String? usernameValidator(String? username) {
    if (username!.isEmpty) {
      return "กรุณาระบุชื่อบัญชี";
    } else {
      return null;
    }
  }

  String? nameValidator(String? name) {
    if (name!.isEmpty) {
      return "กรุณาระบุชื่อ";
    } else {
      return null;
    }
  }
}
