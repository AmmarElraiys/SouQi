import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() async {
  final result = await Get.dialog<bool>(
    AlertDialog(
      title: Text('69'.tr),
      content: Text('70'.tr),
      actions: [
        TextButton(
          onPressed: () => Get.back(result: false),
          child: Text('71'.tr),
        ),
        ElevatedButton(
          onPressed: () => Get.back(result: true),
          child: Text('72'.tr),
        ),
      ],
    ),
    barrierDismissible: false,
  );

  return result ?? false;
}
