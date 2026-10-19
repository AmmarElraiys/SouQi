import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustomTextButtonWidget({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: AppColor.primary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
