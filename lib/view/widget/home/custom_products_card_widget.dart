import 'package:flutter/material.dart';

class CustomProductsCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String imageName;
  final Color color;
  const CustomProductsCardWidget({
    super.key,
    required this.title,
    required this.price,
    required this.imageName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Container(child: Image.asset(imageName))]);
  }
}
