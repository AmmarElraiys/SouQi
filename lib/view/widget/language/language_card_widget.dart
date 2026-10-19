import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageCard extends GetView<LocalController> {
  final String code;
  final String flag;
  final String title;
  final String subtitle;
  final void Function()? onTap;

  const LanguageCard({
    super.key,
    required this.code,
    required this.flag,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalController>(
      builder: (controller) {
        final isSelected = controller.selectedLanguage == code;

        return InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(22),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: isSelected ? AppColor.backgroundimage : AppColor.white,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: isSelected ? AppColor.primary : AppColor.skipcolor,
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
                          color: AppColor.hint,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  isSelected
                      ? Icons.radio_button_checked_rounded
                      : Icons.radio_button_off_rounded,
                  color: isSelected ? AppColor.primary : AppColor.secondary,
                  size: 25,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
