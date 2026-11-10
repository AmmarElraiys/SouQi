import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
  // ignore: strict_top_level_inference
  resetPassword();
}

class ResetpasswordControllerImp extends ResetpasswordController {
  final formKey = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  String? email;
  late TextEditingController password;
  late TextEditingController refpassword;
  @override
  resetPassword() async {
    if (password.text != refpassword.text) {
      return Get.defaultDialog(title: "73".tr, middleText: "80".tr);
    }
    if (formKey.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.successresetpassword);
          Get.defaultDialog(title: "73".tr, middleText: "79".tr);
        } else {
          Get.defaultDialog(title: "73".tr, middleText: "81".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    refpassword = TextEditingController();
    password = TextEditingController();
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void dispose() {
    refpassword.dispose();
    password.dispose();
    super.dispose();
  }
}
