import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/facebook_button.dart';
import 'package:queezy/widgets/google_button.dart';
import 'package:queezy/widgets/primary_button_with_icon.dart';
import 'package:queezy/widgets/terms_text.dart';
import 'package:svg_flutter/svg.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Sign Up',
          style: titleTextStyleBlack,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            verticalSpacing(space: 24),
            PrimaryButtonWithIcon(
              title: 'Sign Up with Email',
              onPressed: () {
                Navigator.pushNamed(context, '/enter_email');
              },
              icon: SvgPicture.asset(
                'assets/ic_email_white.svg',
              ),
            ),
            verticalSpacing(space: 24),
            GoogleButton(
              title: 'Sign Up with Google',
              onPressed: () {},
            ),
            verticalSpacing(space: 24),
            FacebookButton(
              title: 'Sign Up with Facebook',
              onPressed: () {},
            ),
            verticalSpacing(space: 24),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: ColorHex('#858494'),
                    ),
                    children: [
                      TextSpan(text: 'Login', style: buttonTextStylePrimary)
                    ]),
              ),
            ),
            verticalSpacing(space: 24),
            const TermsText(),
          ],
        ),
      ),
    );
  }
}
