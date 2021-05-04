import 'package:flutter/material.dart';
import 'package:simple_login/const/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
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
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.green[500],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "MyApp",
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.green[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
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
                  SizedBox(height: 8),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
