import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  // ignore: strict_top_level_inference
  resetPassword();
  // ignore: strict_top_level_inference
  goToSuccessResetPassword();
}

class LoginControllerImp extends LoginController {
  final formKey = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController refpassword;
  @override
  resetPassword() {
    if (formKey.currentState!.validate()) {
      Get.snackbar('سوقي', 'تم التحقق من البيانات بنجاح');

      // أضف عملية تسجيل الدخول الفعلية هنا.
    }
  }

  @override
  goToSuccessResetPassword() {
    Get.toNamed(AppRoutes.successresetpassword);
  }

  @override
  void onInit() {
    refpassword = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    refpassword.dispose();
    password.dispose();
    super.dispose();
  }
}
