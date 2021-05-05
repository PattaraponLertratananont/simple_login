import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_login/screens/login/login_controller.dart';
import 'package:simple_login/service/user_service.dart';

import 'login_controller_test.mocks.dart';

@GenerateMocks([UserService])
main() {
  group("validator", () {
    var controller =
        LoginController(userService: MockUserService(), view: MockLoginView());
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

  group("submit", () {
    var mockUserService = MockUserService();
    var mockLoginView = MockLoginView();
    var controller =
        LoginController(userService: mockUserService, view: mockLoginView);
    when(mockUserService.login("test", "password"))
        .thenAnswer((_) async => "test");

    test("submit success", () async {
      await controller.onSubmit(true, "test", "password");
      verify(mockLoginView.gotoHome("test"));
    });

    test("submit error", () async {
      await controller.onSubmit(false, "", "");
      verifyNever(mockLoginView.gotoHome("test"));
    });
  });
}

class MockLoginView extends Mock implements LoginView {}
