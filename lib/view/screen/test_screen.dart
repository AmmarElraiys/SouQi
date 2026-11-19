import 'package:ecommerce_app/controller/test_controller.dart';
// import 'package:ecommerce_app/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      body: GetBuilder<TestController>(
        builder: (controller) {
          return Scaffold(body: Center(child: Text("${controller.username}")));
        },
      ),
    );
  }
}
