import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextEmailPasswordWidget extends StatelessWidget {
  final String title;
  const CustomTextEmailPasswordWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColor.text,
      ),
    );
  }
}
