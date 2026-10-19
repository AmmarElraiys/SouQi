import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class LanguageHeader extends StatelessWidget {
  const LanguageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(17),
            ),
            child: const Icon(
              Icons.shopping_bag_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          '1'.tr,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color(0xFF252052),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          '2'.tr,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, height: 1.7, color: Color(0xFF85839F)),
        ),
      ],
    );
  }
}
