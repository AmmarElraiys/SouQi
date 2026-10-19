import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  const CustomTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 14, color: AppColor.black, height: 1.7),
    );
  }
}
