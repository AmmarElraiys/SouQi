// ignore_for_file: file_names

import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailConrtoller extends GetxController {
  // ignore: strict_top_level_inference
  checkEmail();
  // ignore: strict_top_level_inference
  goToVerifyCodeSignUp();
}

class CheckEmailConrtollerImp extends CheckEmailConrtoller {
  final formKey = GlobalKey<FormState>();
  late TextEditingController email;
  @override
  goToVerifyCodeSignUp() {
    Get.toNamed(AppRoutes.verifycodesignup);
  }

  @override
  checkEmail() {
    throw UnimplementedError();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }
}
