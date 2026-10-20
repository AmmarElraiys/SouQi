import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomLolgoShoppingBagWidgetSingup extends StatelessWidget {
  const CustomLolgoShoppingBagWidgetSingup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 86,
        height: 86,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              color: AppColor.primary.withValues(alpha: 0.20),
              blurRadius: 20,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: const Icon(
          Icons.shopping_bag_rounded,
          color: Colors.white,
          size: 44,
        ),
      ),
    );
  }
}
