import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/onboarding/button_onboarding_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_dotcontroller_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_onboardingpage_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/icon_onboarding_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/skip_and_former_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/skip_textbutton_two_widget.dart';
import 'package:ecommerce_app/view/widget/onboarding/text_souqi_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            // الشعار واسم التطبيق
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                children: [
                  IconOnboardingWidget(iconname: Icons.shopping_bag_rounded),
                  const SizedBox(width: 8),
                  TextSouqiWidget(text: 'SouQi'),
                  const Spacer(),
                  SkipTextbuttonTwoWidget(text: '30'.tr),
                ],
              ),
            ),
            // صفحات التعريف
            CustomOnboardingpageWidget(),
            // الأزرار والمؤشرات
            GetBuilder<OnBoardingControllerImp>(
              builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 28),
                  child: Row(
                    children: [
                      // السابق أو تخطي
                      SkipAndFormerWidget(),
                      // مؤشرات الصفحات
                      Expanded(child: CustomDotControllerWidget()),
                      // التالي أو ابدأ الآن
                      ButtonOnboardingWidget(),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
