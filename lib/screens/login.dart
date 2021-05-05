import 'package:flutter/material.dart';
import 'package:simple_login/const/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              height: MediaQuery.of(context).size.height * 0.4,
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.green[500],
              ),
              child: Column(
                children: [
                  Text(
                    "MyApp",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
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
