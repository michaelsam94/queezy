import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:queezy/widgets/password_field.dart';
import 'package:queezy/widgets/primary_button.dart';

import '../utils/spacing.dart';
import '../utils/styles.dart';

class SetNewPasswordPage extends StatelessWidget {
  SetNewPasswordPage({super.key});

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                  'Your new password must be different from previous used passwords.',
                  style: smallTextStyleGray,
                  textAlign: TextAlign.left,
                ),
                verticalSpacing(space: 24),
                PasswordField(
                  label: 'Password',
                  hint: 'Your password',
                  controller: passwordController,
                ),
                verticalSpacing(space: 24),
                PasswordField(
                  label: 'Confirm Password',
                  hint: 'Confirm your password',
                  controller: confirmPasswordController,
                ),
                verticalSpacing(space: 24),
              ],
            ),
            PrimaryButton(
              title: 'Reset Password',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
