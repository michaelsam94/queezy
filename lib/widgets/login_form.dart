import 'package:flutter/material.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/widgets/email_field.dart';
import 'package:queezy/widgets/password_field.dart';
import 'package:queezy/widgets/primary_button.dart';
import 'package:queezy/widgets/terms_text.dart';
import 'package:queezy/widgets/transparent_button_primary_text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EmailField(),
        verticalSpacing(space: 16),
        const PasswordField(label: 'Password',hint: 'Password',),
        verticalSpacing(space: 24),
        PrimaryButton(
          title: 'Login',
          onPressed: () {},
        ),
        verticalSpacing(space: 24),
        TransparentButtonPrimaryText(
          title: 'Forgot password?',
          onPressed: () {
            Navigator.pushNamed(context, '/forgot_password');
          },
        ),
        verticalSpacing(space: 24),
        const Center(
          child: TermsText(),
        )
      ],
    );
  }
}
