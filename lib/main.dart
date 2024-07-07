import 'dart:async';

import 'package:flutter/material.dart';
import 'package:queezy/onboarding_one.dart';
import 'package:queezy/onboarding_page.dart';
import 'package:queezy/splash_page.dart';
import 'package:queezy/utils/colorhex.dart';

import 'onboarding_three.dart';
import 'onboarding_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorHex('#6A5AE0')),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage()
      },
    );
  }

}




