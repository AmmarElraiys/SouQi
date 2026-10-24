import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  // ignore: strict_top_level_inference
  checkCode();
  // ignore: strict_top_level_inference
  goToSuccessSignup();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  final formKey = GlobalKey<FormState>();
  late String verifycode;
  @override
  goToSuccessSignup() {
    Get.toNamed(AppRoutes.successsignup);
  }

  @override
  checkCode() {
    throw UnimplementedError();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
