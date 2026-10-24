import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextForgerpassWidget extends StatelessWidget {
  final String title;
  const CustomTextForgerpassWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColor.primary,
      ),
    );
  }
}
