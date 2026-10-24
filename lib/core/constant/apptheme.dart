import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
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
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
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
);
