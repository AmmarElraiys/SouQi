import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonOnboardingWidget extends GetView<OnBoardingControllerImp> {
  const ButtonOnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return SizedBox(
          width: 130,
          height: 52,
          child: ElevatedButton(
            onPressed: () {
              controller.next();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primary,
              foregroundColor: AppColor.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    controller.currentPage == onBoardingList.length - 1
                        ? 'ابدأ الآن'
                        : 'التالي',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Icon(Icons.arrow_forward_rounded, size: 19),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/*
ElevatedButton(
                          onPressed: () => nextPage(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  currentPage == onBoardingList.length - 1
                                      ? 'ابدأ الآن'
                                      : 'التالي',
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 19,
                                ),
                              ],
                            ),
                          ),
                        ),
                        */
