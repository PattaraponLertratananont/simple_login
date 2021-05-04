import 'package:flutter/material.dart';
import 'package:simple_login/const/color.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
                        "ลืมรหัสผ่าน",
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
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          labelText: "รหัสผ่านใหม่",
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
                      margin: EdgeInsets.only(top: 24),
                      child: ElevatedButton(
                        onPressed: () {},
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
                        child: Text("ยืนยันรหัสผ่าน"),
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
