import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_login/const/color.dart';
import 'package:simple_login/screens/register/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final RegisterController _registerController = Get.put(RegisterController());

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
                child: Form(
                  key: formKey,
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
                            controller: nameController,
                            textInputAction: TextInputAction.next,
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
                            validator: (name) =>
                                _registerController.nameValidator(name)),
                      ),
                      SizedBox(height: 16),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          cursorColor: AppColors.green[600],
                          style: TextStyle(color: AppColors.green[600]),
                          controller: usernameController,
                          textInputAction: TextInputAction.next,
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
                          validator: (username) =>
                              _registerController.usernameValidator(username),
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
                            textInputAction: TextInputAction.next,
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
                            validator: (password) => _registerController
                                .passwordValidator(password)),
                      ),
                      SizedBox(height: 16),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          obscureText: true,
                          cursorColor: AppColors.green[600],
                          style: TextStyle(color: AppColors.green[600]),
                          controller: confirmPasswordController,
                          textInputAction: TextInputAction.next,
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
                          validator: (confirmPassword) =>
                              _registerController.confirmPasswordValidator(
                                  passwordController.text, confirmPassword),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                        child: ElevatedButton(
                          onPressed: () async {
                            _registerController.onSubmit(
                                formKey,
                                nameController.text,
                                usernameController.text,
                                confirmPasswordController.text,
                                context);
                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                            ),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.green[600],
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                          ),
                          child: Text("สมัครสมาชิก"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
