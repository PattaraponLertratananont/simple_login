import 'package:flutter/material.dart';
import 'package:simple_login/const/color.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  HomeScreen({required this.name});
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
            Text(
              "สวัสดีคุณ$name",
              style: TextStyle(
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
