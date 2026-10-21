import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  // ignore: strict_top_level_inference
  checkCode();
  // ignore: strict_top_level_inference
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  final formKey = GlobalKey<FormState>();
  late String verifycode;
  @override
  goToResetPassword() {
    Get.toNamed(AppRoutes.resetPassword);
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
