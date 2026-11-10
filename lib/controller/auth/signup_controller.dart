import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/auth/signup.dart';
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
  final formKey = GlobalKey<FormState>();
  SignUpData signUpData = SignUpData(Get.find());
  List data = [];
  StatusRequest statusRequest = StatusRequest.none;
  @override
  goToSignIn() {
    Get.back();
  }

  @override
  singup() async {
    var formdata = formKey.currentState!;
    if (formdata.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signUpData.postData(
        name.text,
        email.text,
        password.text,
        phone.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(
            AppRoutes.verifycodesignup,
            arguments: {"email": email.text},
          );
        } else {
          Get.defaultDialog(title: "73".tr, middleText: "74".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
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
