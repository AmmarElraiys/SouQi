import 'package:get/get.dart';

class LanguageController extends GetxController {
  // اللغة المختارة افتراضيًا
  String selectedLanguage = 'ar';

  // تغيير اللغة المختارة
  void selectLanguage(String code) {
    selectedLanguage = code;
    update();
  }

  // عند الضغط على زر التالي
  void confirmLanguage() {
    if (selectedLanguage == 'ar') {
      Get.snackbar('تم اختيار اللغة', 'لقد اخترت اللغة العربية');
    } else {
      Get.snackbar('Language selected', 'You selected English');
    }
  }
}


// import 'package:get/state_manager.dart';

// abstract class LanguageController extends GetxController {}
// class LanguageControllerImp extends LanguageController
// {

// }