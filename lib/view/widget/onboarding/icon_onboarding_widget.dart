import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class IconOnboardingWidget extends StatelessWidget {
  final IconData iconname;
  const IconOnboardingWidget({super.key, required this.iconname});
  @override
  Widget build(BuildContext context) {
    return Icon(iconname, color: AppColor.primary, size: 30);
  }
}
