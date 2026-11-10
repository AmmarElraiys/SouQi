import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetpasswordController extends GetxController {
  // ignore: strict_top_level_inference
  checkEmail();
  // ignore: strict_top_level_inference
}

class ForgetpasswordControllerImp extends ForgetpasswordController {
  final formKey = GlobalKey<FormState>();
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController email;

  @override
  checkEmail() async {
    var formdata = formKey.currentState!;
    if (formdata.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoutes.verifyCode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "73".tr, middleText: "77".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
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
