import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomLogoForgetpassWidget extends StatelessWidget {
  final IconData? icon;
  const CustomLogoForgetpassWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: AppColor.primary.withValues(alpha: 0.10),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(icon, size: 52, color: AppColor.primary),
      ),
    );
  }
}
