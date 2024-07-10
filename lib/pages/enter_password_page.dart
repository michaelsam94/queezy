import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/password_field.dart';
import 'package:queezy/widgets/progressbar.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/spacing.dart';
import '../widgets/primary_button.dart';

class EnterPasswordPage extends StatelessWidget {
  EnterPasswordPage({super.key});

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'What\'s your password?',
          style: titleTextStyleBlack,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PasswordField(
                  label: 'Password',
                  hint: 'Your password',
                  controller: passwordController,
                ),
                verticalSpacing(space: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Must be at least 8 characters.',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: ColorHex('#858494'),
                      ),
                    ),
                    SvgPicture.asset('assets/ic_check.svg')
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Progressbar(
                    progressName: 'assets/img_progress_two.svg',
                    currentStep: '2 of 3'),
                verticalSpacing(space: 24),
                PrimaryButton(
                  title: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, '/enter_username');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
