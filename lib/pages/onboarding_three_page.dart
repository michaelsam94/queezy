import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';

import '../widgets/onboarding.dart';
import '../widgets/onboarding_card.dart';


class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Onboarding(
          bgImageName: 'assets/bg_onboarding_two.svg',
          imageName: 'assets/img_onboarding_three.svg',
          sliderImageName: 'assets/slider_indicator_three.svg',
          onboardingCard: const OnboardingCard(
            cardText: 'Take part in challenges \n with friends',
          ),
        )
      //Change for different locations
    );
  }
}
