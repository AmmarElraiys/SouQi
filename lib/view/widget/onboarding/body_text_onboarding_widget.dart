import 'package:flutter/material.dart';

class BodyTextOnboardingWidget extends StatelessWidget {
  final String? body;

  const BodyTextOnboardingWidget({super.key, this.body});

  @override
  Widget build(BuildContext context) {
    return Text(
      body!,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
