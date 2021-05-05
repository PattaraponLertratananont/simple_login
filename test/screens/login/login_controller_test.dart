import 'package:flutter_test/flutter_test.dart';
import 'package:simple_login/screens/login/login_controller.dart';

main() {
  test("invalid useranme", () {
    var controller = LoginController();
    final actual = controller.usernameValidator("");
    expect(actual, "กรุณาระบุชื่อบัญชี");
  });

  test("valid useranme", () {
    var controller = LoginController();
    final actual = controller.usernameValidator("test");
    expect(actual, null);
  });
}
