import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:queezy/pages/enter_email_page.dart';
import 'package:queezy/pages/enter_password_page.dart';
import 'package:queezy/pages/enter_username_page.dart';
import 'package:queezy/pages/forgot_password_page.dart';
import 'package:queezy/pages/home_page.dart';
import 'package:queezy/pages/login_or_signup_page.dart';
import 'package:queezy/pages/login_page.dart';
import 'package:queezy/pages/onboarding_page.dart';
import 'package:queezy/pages/register_page.dart';
import 'package:queezy/pages/set_new_password_page.dart';
import 'package:queezy/pages/splash_page.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/firebase_functions.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(
    Provider(
      create: (BuildContext context) => FirebaseFunctions(),
      child: const MyApp(),
    ),
  );
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
        '/home': (context) => const HomePage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/login_or_signup': (context) => const LoginOrSignupPage(),
        '/login': (context) => const LoginPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/set_new_password': (context) => SetNewPasswordPage(),
        '/register': (context) => const RegisterPage(),
        '/enter_email': (context) => EnterEmailPage(),
        '/enter_password': (context) => EnterPasswordPage(),
        '/enter_username': (context) => const EnterUsernamePage(),
      },
    );
  }
}
