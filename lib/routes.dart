import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.language: (context) => const Language(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
  AppRoutes.signup: (context) => const Signup(),
};
