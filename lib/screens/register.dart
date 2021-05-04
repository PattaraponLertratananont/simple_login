import 'package:flutter/material.dart';
import 'package:simple_login/const/color.dart';
import 'package:simple_login/screens/login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
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
                height: MediaQuery.of(context).size.height * 0.45,
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
                        "สมัครสมาชิก",
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
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: "ชื่อ",
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
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: TextFormField(
                        cursorColor: AppColors.green[600],
                        style: TextStyle(color: AppColors.green[600]),
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
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: AppColors.green[600],
                        style: TextStyle(color: AppColors.green[600]),
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
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: AppColors.green[600],
                        style: TextStyle(color: AppColors.green[600]),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: "ยืนยันรหัสผ่าน",
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
                      margin: EdgeInsets.only(top: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                          ),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.green[600],
                          ),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                        ),
                        child: Text("สมัครสมาชิก"),
                      ),
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
