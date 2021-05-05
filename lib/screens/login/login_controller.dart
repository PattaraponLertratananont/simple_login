import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:simple_login/service/user_service.dart';

class LoginView {
  gotoHome(String name) {}
}

class LoginController extends GetxController {
  late final UserService userService;
  late final LoginView view;
  RxString title = RxString("ผู้หญิงน่ารักแก้มสีชมพู");
  LoginController({required this.userService, required this.view});

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> onSubmit(
    bool validate,
    String username,
    String password,
  ) async {
    if (validate) {
      try {
        String name = await userService.login(username, password);
        view.gotoHome(name);
      } catch (e) {
        print(e);
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
