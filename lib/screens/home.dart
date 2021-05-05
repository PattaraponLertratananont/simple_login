import 'package:flutter/material.dart';
import 'package:simple_login/const/colors.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  const HomeScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/cover.png"),
            Text(
              "สวัสดีคุณ$name",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
