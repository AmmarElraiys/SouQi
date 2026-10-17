import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class LanguageIllustration extends StatelessWidget {
  const LanguageIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      decoration: BoxDecoration(
        color: const Color(0xFFECE9FF),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: AppColor.primary.withValues(alpha: 0.10),
              shape: BoxShape.circle,
            ),
          ),
          Icon(Icons.language_rounded, size: 105, color: AppColor.primary),
          Positioned(top: 25, right: 35, child: _bubble('مرحبا')),
          Positioned(bottom: 24, left: 28, child: _bubble('Hello')),
        ],
      ),
    );
  }

  Widget _bubble(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColor.primary.withValues(alpha: 0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
