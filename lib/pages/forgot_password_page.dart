import 'package:flutter/material.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/email_field.dart';
import 'package:queezy/widgets/primary_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Reset Password',
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
                Text(
                  'Enter your email and we will send you a link to reset your password.',
                  style: smallTextStyleGray,
                  textAlign: TextAlign.left,
                ),
                verticalSpacing(space: 24),
                EmailField(
                  controller: emailController,
                ),
              ],
            ),
            PrimaryButton(
              title: 'Reset Password',
              onPressed: () {
                Navigator.pushNamed(context, '/set_new_password');
              },
            )
          ],
        ),
      ),
    );
  }
}
