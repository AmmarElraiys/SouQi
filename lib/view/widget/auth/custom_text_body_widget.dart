import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextBodyWidget extends StatelessWidget {
  final String text;
  const CustomTextBodyWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 27,
        fontWeight: FontWeight.bold,
        color: AppColor.text,
      ),
    );
  }
}
