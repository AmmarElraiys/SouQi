import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkipTextbuttonTwoWidget extends GetView<OnBoardingControllerImp> {
  const SkipTextbuttonTwoWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: controller.skipPages,
      child: Text(text, style: TextStyle(color: AppColor.hint, fontSize: 15)),
    );
  }
}
