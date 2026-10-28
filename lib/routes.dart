import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/middleware/mymiddleware.dart';
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
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => Language(), middlewares: [Mymiddleware()]),
  GetPage(name: AppRoutes.login, page: () => Login()),
  GetPage(name: AppRoutes.onBoarding, page: () => OnBoarding()),
  GetPage(name: AppRoutes.signup, page: () => Signup()),
  GetPage(name: AppRoutes.forgetpass, page: () => ForgetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => Verifycode()),
  GetPage(name: AppRoutes.resetPassword, page: () => ResetPassword()),
  GetPage(
    name: AppRoutes.successresetpassword,
    page: () => SuccessResetpassword(),
  ),
  GetPage(name: AppRoutes.successsignup, page: () => SuccessSignup()),
  GetPage(name: AppRoutes.verifycodesignup, page: () => VerifycodeSignUp()),
];
