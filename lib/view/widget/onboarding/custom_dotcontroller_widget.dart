import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerWidget extends GetView<OnBoardingControllerImp> {
  const CustomDotControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 8,
              width: controller.currentPage == index ? 24 : 8,
              decoration: BoxDecoration(
                color: controller.currentPage == index
                    ? AppColor.primary
                    : const Color(0xFFD9DCE8),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        );
      },
    );
  }
}
/*
import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerWidget extends GetView<OnBoardingControllerImp> {
  const CustomDotControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onBoardingList.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: controller.currentPage == index ? 24 : 8,
          decoration: BoxDecoration(
            color: controller.currentPage == index
                ? AppColor.primary
                : const Color(0xFFD9DCE8),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
*/