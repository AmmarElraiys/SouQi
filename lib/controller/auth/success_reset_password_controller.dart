// ignore_for_file: strict_top_level_inference

import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
