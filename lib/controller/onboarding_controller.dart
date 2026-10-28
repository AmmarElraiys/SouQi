import 'package:ecommerce_app/core/constant/approutes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/widget/snackbar_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  // ignore: strict_top_level_inference
  next();
  // ignore: strict_top_level_inference
  onPageChanged(int index);
  // ignore: strict_top_level_inference
  skipPages();
  // ignore: strict_top_level_inference
  previousPage();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  MyServices myServices = Get.find();
  int currentPage = 0;
  @override
  next() {
    if (currentPage < onBoardingList.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      SnackbarApp.showWelcome();
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoutes.login);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void skipPages() {
    if (currentPage < onBoardingList.length - 1) {
      pageController.animateToPage(
        onBoardingList.length - 1,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  previousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    }
  }
}
