import 'package:ecommerce_app/controller/language/language_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class LanguageCard extends StatelessWidget {
  final LanguageController controller;
  final String code;
  final String flag;
  final String title;
  final String subtitle;

  const LanguageCard({
    super.key,
    required this.controller,
    required this.code,
    required this.flag,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = controller.selectedLanguage == code;

    return InkWell(
      onTap: () => controller.selectLanguage(code),
      borderRadius: BorderRadius.circular(22),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF0EDFF) : Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: isSelected ? AppColor.primary : const Color(0xFFEAE8F5),
            width: isSelected ? 1.8 : 1.2,
          ),
        ),
        child: Row(
          children: [
            Text(flag, style: const TextStyle(fontSize: 34)),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF252052),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF85839F),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              isSelected
                  ? Icons.radio_button_checked_rounded
                  : Icons.radio_button_off_rounded,
              color: isSelected ? AppColor.primary : const Color(0xFFB7B4CC),
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
