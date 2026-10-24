import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  // ignore: strict_top_level_inference
  goToLogin();
}

class SuccessSignupControllerImp extends SuccessSignupController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
}
