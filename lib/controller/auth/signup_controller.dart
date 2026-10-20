import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  // ignore: strict_top_level_inference
  singup();
  // ignore: strict_top_level_inference
  goToSignIn();
}

class SignupControllerImp extends SignupController {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController passwordconf;

  @override
  goToSignIn() {
    Get.back();
    throw UnimplementedError();
  }

  @override
  singup() {
    throw UnimplementedError();
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    passwordconf = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    passwordconf.dispose();
    super.dispose();
  }
}
