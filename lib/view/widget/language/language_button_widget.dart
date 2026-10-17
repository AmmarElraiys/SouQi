import 'package:ecommerce_app/controller/language/language_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final LanguageController controller;

  const LanguageButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: controller.confirmLanguage,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'التالي',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward_rounded),
          ],
        ),
      ),
    );
  }
}
