import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';

import 'package:queezy/widgets/onboarding.dart';
import 'package:queezy/widgets/onboarding_card.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Onboarding(
          bgImageName: 'assets/bg_onboarding_two.svg',
          imageName: 'assets/img_onboarding_two.svg',
          sliderImageName: 'assets/slider_indicator_two.svg',
          onboardingCard: const OnboardingCard(
            cardText: 'Find quizzes to test out \n your knowledge',
          ),
        )
      //Change for different locations
    );
  }
}