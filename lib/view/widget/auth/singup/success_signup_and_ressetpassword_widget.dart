import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class SuccessSignupAndRessetpasswordWidget extends StatelessWidget {
  final IconData? icon;
  const SuccessSignupAndRessetpasswordWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: AppColor.primary.withValues(alpha: 0.10),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 85, color: AppColor.primary),
    );
  }
}
