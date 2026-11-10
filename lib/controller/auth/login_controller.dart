import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/auth/login.dart';
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

  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() async {
    var formdata = formstate.currentState!;
    if (formdata.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.home, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "73".tr, middleText: '76'.tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update(); // أضف عملية تسجيل الدخول الفعلية هنا.
    }
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
