import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomPromotionalBannerWidget extends StatelessWidget {
  final String title;
  final String text;
  final String texttwo;
  final void Function() onPressed;
  const CustomPromotionalBannerWidget({
    super.key,
    required this.title,
    required this.text,
    required this.texttwo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColor.primary, AppColor.blue200],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  text,
                  style: TextStyle(
                    color: AppColor.secondary,
                    height: 1.6,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.white,
                    foregroundColor: AppColor.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    texttwo,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.shopping_bag_rounded,
            color: AppColor.white,
            size: 85,
          ),
        ],
      ),
    );
  }
}
