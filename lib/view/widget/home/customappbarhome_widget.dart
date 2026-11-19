import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomappbarhomeWidget extends StatelessWidget {
  final String title;
  final String text;
  const CustomappbarhomeWidget({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(
            Icons.shopping_bag_outlined,
            color: AppColor.primary,
            size: 27,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: AppColor.hint, fontSize: 13)),
              SizedBox(height: 4),
              Text(
                text,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: AppColor.black,
            ),
          ),
        ),
      ],
    );
  }
}
