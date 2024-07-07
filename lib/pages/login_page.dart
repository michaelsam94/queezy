import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/facebook_button.dart';
import 'package:queezy/widgets/google_button.dart';
import 'package:queezy/widgets/login_form.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHex('#EFEEFC'),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Login',
          style: titleTextStyleBlack,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpacing(space: 22),
              GoogleButton(
                title: 'Sign in with Google',
                onPressed: () {},
              ),
              verticalSpacing(space: 12),
              FacebookButton(
                title: 'Sign in with Facebook',
                onPressed: () {},
              ),
              verticalSpacing(space: 24),
              Center(
                child: Text(
                  'OR',
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
              verticalSpacing(space: 24),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
