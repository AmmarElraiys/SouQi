import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarApp {
  static void showWelcome() {
    Get.snackbar(
      'أهلًا بك في سوقي!',
      'سجّل الدخول الآن للاستمتاع بتجربة تسوق مميزة.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.white,
      colorText: AppColor.black,
      margin: const EdgeInsets.all(16),
      borderRadius: 18,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      duration: const Duration(seconds: 3),
      icon: Icon(Icons.login_rounded, color: AppColor.primary, size: 30),
      shouldIconPulse: false,
      boxShadows: [
        BoxShadow(
          color: AppColor.primary.withValues(alpha: 0.12),
          blurRadius: 18,
          offset: const Offset(0, 5),
        ),
      ],
    );
  }
}
