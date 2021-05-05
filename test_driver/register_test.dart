// @dart = 2.8

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

main() {
  group("ผู้ใช้งานสมัครสมาชิก", () {
    FlutterDriver driver;
    final registerButton = find.byValueKey("register_button");
    final registerSubmitButton = find.byValueKey("register_submit_button");
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test("สำเร็จ - เนื่องจากกรอกข้อมูลครบ", () async {
      await driver.tap(registerButton);
      final registerTitle = find.byValueKey("register_title");
      await driver.waitFor(registerTitle);
      final nameField = find.byValueKey("name_field");
      await driver.tap(nameField);
      await driver.enterText("e2e test");
      final usernameField = find.byValueKey("username_field");
      await driver.tap(usernameField);
      await driver.enterText("test");
      final passwordField = find.byValueKey("password_field");
      await driver.tap(passwordField);
      await driver.enterText("password");
      final confirmPasswordField = find.byValueKey("confirm_password_field");
      await driver.tap(confirmPasswordField);
      await driver.enterText("password");

      await driver.tap(registerSubmitButton);
    });

    test("ไม่สำเร็จ - เนื่องจากกรอกข้อมูล", () async {
      await driver.tap(registerButton);
      await driver.tap(registerSubmitButton);
      expect(await driver.getText(find.text("กรุณาระบุชื่อ")), "กรุณาระบุชื่อ");
      expect(await driver.getText(find.text("กรุณาระบุชื่อบัญชี")),
          "กรุณาระบุชื่อบัญชี");
      expect(await driver.getText(find.text("กรุณาระบุรหัสผ่าน")),
          "กรุณาระบุรหัสผ่าน");
      expect(await driver.getText(find.text("กรุณายืนยันรหัสผ่าน")),
          "กรุณายืนยันรหัสผ่าน");
    });
  });
}
