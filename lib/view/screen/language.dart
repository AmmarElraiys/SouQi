import 'package:ecommerce_app/controller/language/language_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/language/language_button_widget.dart';
import 'package:ecommerce_app/view/widget/language/language_card_widget.dart';
import 'package:ecommerce_app/view/widget/language/language_header_widget.dart';
import 'package:ecommerce_app/view/widget/language/language_illustration_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(
      init: LanguageController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColor.skipcolor,
          body: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight - 40,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const LanguageHeader(),
                            const SizedBox(height: 30),
                            const LanguageIllustration(),
                            const SizedBox(height: 32),
                            LanguageCard(
                              controller: controller,
                              code: 'ar',
                              flag: '🇸🇦',
                              title: 'العربية',
                              subtitle: 'Arabic',
                            ),
                            const SizedBox(height: 16),
                            LanguageCard(
                              controller: controller,
                              code: 'en',
                              flag: '🇬🇧',
                              title: 'الإنجليزية',
                              subtitle: 'English',
                            ),
                            const Spacer(),
                            const SizedBox(height: 35),
                            LanguageButton(controller: controller),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
