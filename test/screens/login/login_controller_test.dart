import 'package:flutter_test/flutter_test.dart';
import 'package:simple_login/screens/login/login_controller.dart';

main() {
  group("validator", () {
    var controller = LoginController();
    test("invalid useranme", () {
      final actual = controller.usernameValidator("");
      expect(actual, "กรุณาระบุชื่อบัญชี");
    });

    test("valid useranme", () {
      final actual = controller.usernameValidator("test");
      expect(actual, null);
    });

    test("valid password", () {
      final actual = controller.passwordValidator("password");
      expect(actual, null);
    });

    test("invalid useranme", () {
      final actual = controller.passwordValidator("");
      expect(actual, "กรุณาระบุรหัสผ่าน");
    });
  });
}
