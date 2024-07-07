import 'dart:math';

import 'package:flutter/material.dart';
import 'package:queezy/widgets/onboarding.dart';
import 'package:queezy/widgets/onboarding_card.dart';
import 'package:queezy/utils/colors.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Onboarding(
          bgImageName: 'assets/bg_onboarding_one.svg',
          imageName: 'assets/img_onboarding_one.svg',
          sliderImageName: 'assets/slider_indicator_one.svg',
          onboardingCard: const OnboardingCard(
            cardText: 'Create gamified quizzes \n becomes simple',
          ),
        )
        //Change for different locations
        );
  }
}
