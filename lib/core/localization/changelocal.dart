import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  final MyServices myServices = Get.find<MyServices>();

  String selectedLanguage = 'ar';

  Locale get language => Locale(selectedLanguage);

  @override
  void onInit() {
    super.onInit();

    final savedLanguage = myServices.sharedPreferences.getString('lang');

    if (savedLanguage == 'ar' || savedLanguage == 'en') {
      selectedLanguage = savedLanguage!;
    } else {
      final deviceLanguage = Get.deviceLocale?.languageCode ?? 'ar';

      selectedLanguage = deviceLanguage == 'en' ? 'en' : 'ar';
    }
  }

  // اختيار اللغة من البطاقات
  void selectLanguage(String code) {
    if (code != 'ar' && code != 'en') return;

    selectedLanguage = code;
    update();
  }

  // حفظ اللغة وتطبيقها
  Future<void> changeLang(String languageCode) async {
    if (languageCode != 'ar' && languageCode != 'en') return;

    selectedLanguage = languageCode;

    await myServices.sharedPreferences.setString('lang', languageCode);

    Get.updateLocale(Locale(languageCode));
    update();
  }

  // تأكيد اللغة المختارة
  Future<void> confirmLanguage() async {
    await changeLang(selectedLanguage);

    if (selectedLanguage == 'ar') {
      Get.snackbar('تم اختيار اللغة', 'لقد اخترت اللغة العربية');
    } else {
      Get.snackbar('Language selected', 'You selected English');
    }
  }
}
