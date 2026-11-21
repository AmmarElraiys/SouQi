import 'package:ecommerce_app/controller/home_screen_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/home/custom_bottom_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.changePage(2);
            },
            backgroundColor: AppColor.primary,
            elevation: 5,
            shape: const CircleBorder(),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 27,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: CustomBottomAppbarWidget(),
          body: controller.pages[controller.currentpage],
        );
      },
    );
  }
}
