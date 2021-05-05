import 'package:flutter/material.dart';
import 'package:simple_login/const/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/cover.png"),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.green[500],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Text(
                      "MyApp",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24, right: 24),
                      child: TextFormField(
                        controller: usernameController,
                        cursorColor: AppColors.green[600],
                        decoration: InputDecoration(
                          labelText: "ชื่อบัญชี",
                          labelStyle: TextStyle(
                            color: AppColors.green[600],
                          ),
                          hintText: "ใส่ชื่อนะ",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.green[600]!,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.green[600]!,
                            ),
                          ),
                        ),
                        validator: (username) {
                          if (username!.isEmpty) {
                            return "กรุณาระบุชื่อบัญชี";
                          } else if (username.length <= 4) {
                            return "ชื่อบัญชีสั้นเกินไป";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24, right: 24),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        cursorColor: AppColors.green[600],
                        decoration: InputDecoration(
                          labelText: "รหัสผ่าน",
                          labelStyle: TextStyle(
                            color: AppColors.green[600],
                          ),
                          hintText: "ใส่รหัสนะ",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.green[600]!,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.green[600]!,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          formKey.currentState!.validate();
                        },
                        validator: (password) {
                          RegExp regExp = RegExp("[0-9]");
                          if (password!.isEmpty) {
                            return "กรุณาระบุรหัสผ่าน";
                          } else if (!regExp.hasMatch(password)) {
                            return "รหัสผ่านไม่ถูกต้อง";
                          } else if (password.length <= 6) {
                            return "รหัสผ่านสั้นเกินไป";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          print(usernameController.text);
                          print(passwordController.text);
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                        decoration: BoxDecoration(
                          color: AppColors.green[600],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "เข้าสู่ระบบ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
