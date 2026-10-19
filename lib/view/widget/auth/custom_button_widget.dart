import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButtonWidget({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
