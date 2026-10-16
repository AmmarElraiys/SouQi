import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkipAndFormerWidget extends GetView<OnBoardingControllerImp> {
  const SkipAndFormerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return SizedBox(
          width: 75,
          child: TextButton(
            onPressed: () {
              if (controller.currentPage == 0) {
                controller.skipPages();
              } else {
                controller.previousPage();
              }
            },
            child: Text(
              controller.currentPage == 0 ? 'تخطي' : 'السابق',
              style: const TextStyle(
                color: Color(0xFF555B70),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
