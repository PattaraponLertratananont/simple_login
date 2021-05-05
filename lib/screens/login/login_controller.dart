import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:simple_login/screens/home.dart';
import 'package:simple_login/service/user_service.dart';

class LoginController extends GetxController {
  RxString title = RxString("ผู้หญิงน่ารักแก้มสีชมพู");

  @override
  void onInit() {
    super.onInit();
  }

  void onSubmit(GlobalKey<FormState> formKey, String username, String password,
      BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        String name = await UserService.login(username, password);
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomeScreen(name: name),
        ));
      } catch (e) {
        print("Login failed.");
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
