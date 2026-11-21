import 'package:ecommerce_app/controller/home_screen_controller.dart';
import 'package:ecommerce_app/view/widget/home/custom_button_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomBottomAppbarWidget extends GetView<HomeScreenControllerImp> {
  const CustomBottomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 12,
      shape: const CircularNotchedRectangle(),
      notchMargin: 9,
      padding: EdgeInsets.zero,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              controller.pages.length - 1,
              (index) => CustomButtonAppbarWidget(
                ontap: () {
                  controller.changePage(index);
                },
                icon: controller.navItems[index]['icon'] as IconData,
                label: controller.navItems[index]['label'] as String,
                active: controller.currentpage == index ? true : false,
                myfontSize: controller.currentpage == index ? 35 : 20,
                fontSize: controller.currentpage == index ? 17 : 17,
                myfont: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
