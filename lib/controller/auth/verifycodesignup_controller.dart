import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:ecommerce_app/data/datasource/remote/auth/verifycodesignup.dart';
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
  TextEditingController verifysignupcode = TextEditingController();
  VerifyCodeSignUpData verfycodesignupdata = VerifyCodeSignUpData(Get.find());
  StatusRequest? statusRequest;
  String? email;
  @override
  goToSuccessSignup() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfycodesignupdata.postData(
      email!,
      verifysignupcode.text,
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.toNamed(AppRoutes.successsignup);
      } else {
        Get.defaultDialog(title: "69".tr, middleText: "75".tr);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  checkCode() {
    throw UnimplementedError();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    verifysignupcode = TextEditingController();
    super.onInit();
  }
}
