import 'dart:async';

import 'package:flutter/material.dart';
import 'package:queezy/pages/enter_email_page.dart';
import 'package:queezy/pages/enter_password_page.dart';
import 'package:queezy/pages/enter_username_page.dart';
import 'package:queezy/pages/forgot_password_page.dart';
import 'package:queezy/pages/login_or_signup_page.dart';
import 'package:queezy/pages/login_page.dart';
import 'package:queezy/pages/onboarding_page.dart';
import 'package:queezy/pages/register_page.dart';
import 'package:queezy/pages/set_new_password_page.dart';
import 'package:queezy/pages/splash_page.dart';
import 'package:queezy/utils/colorhex.dart';


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
        '/onboarding': (context) => const OnboardingPage(),
        '/login_or_signup': (context) => const LoginOrSignupPage(),
        '/login': (context) => const LoginPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/set_new_password': (context) => const SetNewPasswordPage(),
        '/register': (context) => const RegisterPage(),
        '/enter_email': (context) => const EnterEmailPage(),
        '/enter_password': (context) => const EnterPasswordPage(),
        '/enter_username': (context) => const EnterUsernamePage(),
      },
    );
  }

}




