import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class SkipTextbuttonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  const SkipTextbuttonWidget({super.key, this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(color: AppColor.skipcolor, fontSize: 15),
      ),
    );
  }
}
