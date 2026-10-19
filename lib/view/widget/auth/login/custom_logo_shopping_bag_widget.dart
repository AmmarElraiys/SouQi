import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomLogoShoppingBagWidget extends StatelessWidget {
  const CustomLogoShoppingBagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: AppColor.primary.withValues(alpha: 0.22),
            blurRadius: 22,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Icon(
        Icons.shopping_bag_rounded,
        color: Colors.white,
        size: 44,
      ),
    );
  }
}
