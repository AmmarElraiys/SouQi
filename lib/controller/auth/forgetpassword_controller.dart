import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  // ignore: strict_top_level_inference
  checkEmail();
  // ignore: strict_top_level_inference
  goToverfiycode();
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  final formKey = GlobalKey<FormState>();
  late TextEditingController email;
  @override
  goToverfiycode() {
    Get.toNamed(AppRoutes.verfiyCode);
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
