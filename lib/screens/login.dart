import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:simple_login/const/color.dart';
import 'package:simple_login/screens/forgot_password.dart';
import 'package:simple_login/screens/home.dart';
import 'package:simple_login/screens/register.dart';
import 'package:simple_login/service/user_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 16, bottom: 24),
                child: Image.asset(
                  "assets/cover.png",
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.green[500],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "MyApp",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.green[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: TextFormField(
                        cursorColor: AppColors.green[600],
                        style: TextStyle(color: AppColors.green[600]),
                        controller: usernameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: "ชื่อบัญชี",
                          labelStyle: TextStyle(
                            color: AppColors.green[600],
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.green[600]!,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: AppColors.green[600],
                        style: TextStyle(color: AppColors.green[600]),
                        controller: passwordController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: "รหัสผ่าน",
                          labelStyle: TextStyle(
                            color: AppColors.green[600],
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.green[600]!,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen(),
                          ));
                        },
                        child: Text(
                          "ลืมรหัสผ่าน",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: AppColors.green[600],
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        try {
                          String name = await UserService.login(
                              usernameController.text, passwordController.text);
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen(name: name),
                          ));
                        } catch (e) {
                          print("Login failed.");
                        }
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                        ),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                          AppColors.green[600],
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                      ),
                      child: Text("เข้าสู่ระบบ"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "หากยังไม่มีบัญชี?",
                          style: TextStyle(
                            color: AppColors.green[600],
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ));
                          },
                          child: Text(
                            "สมัครสมาชิก",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.green[600],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
