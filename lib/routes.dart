import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/view/screen/auth/check_email.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forget_password.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.language: (context) => const Language(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
  AppRoutes.signup: (context) => const Signup(),
  AppRoutes.forgetpass: (context) => const ForgetPassword(),
  AppRoutes.verifyCode: (context) => const Verifycode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successresetpassword: (context) => const SuccessResetpassword(),
  AppRoutes.successsignup: (context) => const SuccessSignup(),
  AppRoutes.checEmailSignup: (context) => const CheckEmail(),
  AppRoutes.verifycodesignup: (context) => const VerifycodeSignUp(),
};
