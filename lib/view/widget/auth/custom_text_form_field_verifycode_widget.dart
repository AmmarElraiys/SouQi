import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldVerifycodeWidget extends StatelessWidget {
  final TextEditingController? controller;
  const CustomTextFormFieldVerifycodeWidget({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      maxLength: 6,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        letterSpacing: 12,
      ),
      decoration: InputDecoration(
        counterText: '',
        hintText: '------',
        hintStyle: const TextStyle(color: Color(0xFFB7BBC9), letterSpacing: 8),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFFE6E8F0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: Color(0xFFE6E8F0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: AppColor.primary, width: 1.5),
        ),
      ),
    );
  }
}
