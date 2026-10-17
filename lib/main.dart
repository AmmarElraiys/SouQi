import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headlineSmall: const TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w800,
            height: 1.5,
            color: AppColor.titlecolor,
          ),
          bodySmall: const TextStyle(
            fontSize: 18,
            height: 1.9,
            color: AppColor.bodycolor, // استخدم اللون من AppColor
          ),
        ),
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Language(),
      routes: routes,
    );
  }
}
/*id("com.android.application") version "8.11.1" apply false       settings*/ 