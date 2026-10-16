import 'package:flutter/material.dart';

class TitleTextOnboardingWidget extends StatelessWidget {
  final String? title;

  const TitleTextOnboardingWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
