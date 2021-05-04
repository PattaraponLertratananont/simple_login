import 'package:flutter/material.dart';
import 'package:simple_login/const/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
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
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: AppColors.green[500],
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
