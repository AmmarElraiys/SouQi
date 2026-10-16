import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      home: OnBoarding(),
      routes: routes,
    );
  }
}
