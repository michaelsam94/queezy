import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/services/auth_service.dart';
import 'package:svg_flutter/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        if (context.read<AuthService>().getUser() == null) {
          Navigator.pushReplacementNamed(context, '/login_or_signup');
        } else {
          Navigator.pushReplacementNamed(context, '/home');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final appNameStyle = GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 36, fontWeight: FontWeight.w800, color: Colors.white));
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          SvgPicture.asset('assets/bg_splash.svg'),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/logo.svg'),
                Text(
                  'Queezy',
                  style: appNameStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
