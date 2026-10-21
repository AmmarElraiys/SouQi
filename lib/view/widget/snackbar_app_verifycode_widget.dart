import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarAppVerifycodeWidget {
  static void showWelcome() {
    Get.snackbar(
      'SouQi',
      '42'.tr,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.white,
      colorText: AppColor.souqicolor,
      margin: const EdgeInsets.all(16),
      borderRadius: 16,
    );
  }
}
