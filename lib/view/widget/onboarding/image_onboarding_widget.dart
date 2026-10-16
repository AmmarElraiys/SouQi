import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class ImageOnboardingWidget extends StatelessWidget {
  final String imagename;
  const ImageOnboardingWidget({super.key, required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 310,
      decoration: BoxDecoration(
        color: AppColor.backgroundimage,
        borderRadius: BorderRadius.circular(36),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(36),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Image.asset(
            imagename,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.shopping_cart_rounded,
                size: 100,
                color: AppColor.backgroundimage,
              );
            },
          ),
        ),
      ),
    );
  }
}
