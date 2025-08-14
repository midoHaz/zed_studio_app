import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingLottie extends StatelessWidget {
  const OnboardingLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Lottie.asset("assets/lotties/onboarding.json",
           
            repeat: true,
            reverse: false,
            animate: true),
      ),
    );
  }
}
