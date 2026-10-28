import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mymiddleware extends GetMiddleware {
  MyServices myServices = Get.find();
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return RouteSettings(name: AppRoutes.login);
    }
  }
}
