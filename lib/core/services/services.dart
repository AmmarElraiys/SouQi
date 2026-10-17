import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}

// import 'package:get/get.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';

// class MyServices extends GetxService {
//   late Box myBox;

//   Future<MyServices> init() async {
//     // 1. جلب مسار مجلد المستندات الخاص بالتطبيق على الجهاز
//     final appDocumentDir = await getApplicationDocumentsDirectory();

//     // 2. تهيئة Hive باستخدام المسار المباشر (بدون hive_flutter)
//     Hive.init(appDocumentDir.path);

//     // 3. فتح صندوق التخزين
//     myBox = await Hive.openBox('app_box');

//     return this;
//   }

//   // حفظ قيمة
//   Future<void> saveData(String key, dynamic value) async {
//     await myBox.put(key, value);
//   }

//   // قراءة قيمة
//   dynamic getData(String key, {dynamic defaultValue}) {
//     return myBox.get(key, defaultValue: defaultValue);
//   }

//   // حذف قيمة
//   Future<void> removeData(String key) async {
//     await myBox.delete(key);
//   }

//   // مسح جميع البيانات
//   Future<void> clearData() async {
//     await myBox.clear();
//   }
// }

// // تهيئة الخدمات عند بدء التطبيق
// Future<void> initialServices() async {
//   await Get.putAsync<MyServices>(() => MyServices().init());
// }
