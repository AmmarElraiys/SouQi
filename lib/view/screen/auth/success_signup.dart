import 'package:ecommerce_app/controller/auth/success_signup_controller.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_body_widget.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_widget.dart';
import 'package:ecommerce_app/view/widget/auth/forgetpassword/custom_button_widget.dart';
import 'package:ecommerce_app/view/widget/auth/singup/success_signup_and_ressetpassword_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/core/constant/color.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller = Get.put(
      SuccessSignupControllerImp(),
    );
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 430),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // أيقونة النجاح
                    SuccessSignupAndRessetpasswordWidget(
                      icon: Icons.check_circle_rounded,
                    ),

                    const SizedBox(height: 32),
                    CustomTextBodyWidget(text: '50'.tr),
                    // العنوان
                    const SizedBox(height: 16),
                    // الوصف
                    CustomTextWidget(title: '51'.tr),
                    const SizedBox(height: 36),
                    // زر تسجيل الدخول
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: CustomButtonWidget(
                        title: '52'.tr,
                        onPressed: () {
                          controller.goToLogin();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
