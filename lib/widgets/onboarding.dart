import 'package:flutter/material.dart';
import 'package:queezy/widgets/background.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:svg_flutter/svg.dart';

import 'onboarding_card.dart';

// ignore: must_be_immutable
class Onboarding extends StatelessWidget {
  String bgImageName;
  final String imageName;
  final String sliderImageName;
  final OnboardingCard onboardingCard;

  Onboarding(
      {super.key,
      required this.bgImageName,
      required this.imageName,
      required this.sliderImageName,
      required this.onboardingCard});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(
        imgName: bgImageName,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          verticalSpacing(space: 130),
          Expanded(
            child: Center(
              child: SvgPicture.asset(
                imageName,
              ),
            ),
          ),
          SvgPicture.asset(sliderImageName),
          onboardingCard,
        ],
      ),
    ]);
  }
}
