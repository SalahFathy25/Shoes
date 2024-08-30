import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/widgets/onBoarding_widgets/OnboardingBody.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingBody(),
    );
  }
}