import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  // ignore: strict_top_level_inference
  checkCode();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  final formKey = GlobalKey<FormState>();
  TextEditingController verifycodeforgetpass = TextEditingController();
  VerifyCodeForgetPasswordData verifyCodeData = VerifyCodeForgetPasswordData(
    Get.find(),
  );
  StatusRequest statusRequest = StatusRequest.none;
  String? email;

  @override
  checkCode() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeData.postData(
      email!,
      verifycodeforgetpass.text,
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoutes.resetPassword, arguments: {"email": email});
      } else {
        Get.defaultDialog(title: "73".tr, middleText: "78".tr);
        statusRequest = StatusRequest.failure;
      }

      update();
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    verifycodeforgetpass = TextEditingController();
    super.onInit();
  }
}
