import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomProductsHomeWidget extends StatelessWidget {
  final String title;
  final String action;
  const CustomProductsHomeWidget({
    super.key,
    required this.title,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          action,
          style: const TextStyle(
            color: AppColor.black,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
