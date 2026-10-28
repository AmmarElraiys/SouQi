import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  // ignore: strict_top_level_inference
  login();
  // ignore: strict_top_level_inference
  goToSignup();
  goToForgetPass();
}

class LoginControllerImp extends LoginController {
  final GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {
    var formdata = formstate.currentState!;
    if (formdata.validate()) {
      Get.snackbar('سوقي', 'تم التحقق من البيانات بنجاح');
      // أضف عملية تسجيل الدخول الفعلية هنا.
    } else {}
  }

  @override
  goToSignup() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPass() {
    Get.toNamed(AppRoutes.forgetpass);
  }
}

// class LoginController extends GetxController {
//   final formKey = GlobalKey<FormState>();

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   bool obscurePassword = true;

//   void togglePasswordVisibility() {
//     obscurePassword = !obscurePassword;
//     update();
//   }

//   void login() {
//     if (formKey.currentState!.validate()) {
//       Get.snackbar('سوقي', 'تم التحقق من البيانات بنجاح');

//       // أضف عملية تسجيل الدخول الفعلية هنا.
//     }
//   }

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }
// }
