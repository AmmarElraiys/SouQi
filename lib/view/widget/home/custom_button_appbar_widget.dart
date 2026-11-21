import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppbarWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final FontWeight? myfont;
  final bool active;
  final void Function()? ontap;
  final double? fontSize;
  final double? myfontSize;

  const CustomButtonAppbarWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.myfont,
    required this.active,
    this.ontap,
    this.fontSize,
    required this.myfontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        width: 65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: active == true ? AppColor.primary : AppColor.black,
              size: myfontSize,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: active == true ? AppColor.primary : AppColor.black,
                fontSize: fontSize,
                fontWeight: myfont,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
