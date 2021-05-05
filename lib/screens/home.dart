import 'package:flutter/material.dart';
import 'package:simple_login/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/cover.png"),
            Text("สวัสดีค่ะภัทรพล"),
          ],
        ),
      ),
    );
  }
}
