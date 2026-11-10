import 'package:get/get.dart';

abstract class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  late String email;
  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}
