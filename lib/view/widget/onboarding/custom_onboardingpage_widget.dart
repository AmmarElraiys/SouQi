import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/widget/onboarding/body_text_onboarding_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/image_onboarding_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/title_text_onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomOnboardingpageWidget extends GetView<OnBoardingControllerImp> {
  const CustomOnboardingpageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller.pageController,
        itemCount: onBoardingList.length,
        onPageChanged: (index) {
          controller.currentPage = index;
          controller.update();
        },
        itemBuilder: (context, index) {
          final item = onBoardingList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // الصورة
                ImageOnboardingWidget(imagename: item.image!),
                const SizedBox(height: 38),
                // العنوان
                TitleTextOnboardingWidget(title: item.title),
                const SizedBox(height: 16),
                // النص
                BodyTextOnboardingWidget(body: item.body),
              ],
            ),
          );
        },
      ),
    );
  }
}
