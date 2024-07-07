import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:queezy/onboarding_two.dart';

import 'onboarding_one.dart';
import 'onboarding_three.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayInterval: const Duration(
            seconds: 5,
          )),
      items: const [
        OnboardingOne(),
        OnboardingTwo(),
        OnboardingThree(),
      ],
    );
  }
}
