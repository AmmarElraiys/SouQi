import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class TextSouqiWidget extends StatelessWidget {
  final String text;
  const TextSouqiWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      'SouQi',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.souqicolor,
      ),
    );
  }
}
