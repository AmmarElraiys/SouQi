import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/view/screen/auth/forget_password.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/reset_password.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/success_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/verifycode.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.language: (context) => const Language(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
  AppRoutes.signup: (context) => const Signup(),
  AppRoutes.forgetpass: (context) => const ForgetPassword(),
  AppRoutes.verfiyCode: (context) => const Verifycode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successresetpassword: (context) => const SuccessResetpassword(),
  AppRoutes.successsignup: (context) => const SuccessSignup(),
};
