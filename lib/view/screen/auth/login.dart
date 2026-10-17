import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Login Screen',
          style: TextStyle(backgroundColor: AppColor.backgroundcolor),
        ),
      ),
    );
  }
}
