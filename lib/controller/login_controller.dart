import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscurePassword = true;

  void togglePasswordVisibility() {
    obscurePassword = !obscurePassword;
    update();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      Get.snackbar('سوقي', 'تم التحقق من البيانات بنجاح');

      // أضف عملية تسجيل الدخول الفعلية هنا.
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
