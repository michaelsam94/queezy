import 'package:flutter/material.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/utils/utils.dart';
import 'package:queezy/widgets/email_field.dart';
import 'package:queezy/widgets/password_field.dart';
import 'package:queezy/widgets/primary_button.dart';
import 'package:queezy/widgets/terms_text.dart';
import 'package:queezy/widgets/transparent_button_primary_text.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  VoidCallback onLoginPress;
  LoginForm(
      {super.key,
      required this.formKey,
      required this.emailController,
      required this.passwordController,
      required this.onLoginPress});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EmailField(
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty || !isValidEmail(value)) {
                return 'Enter a valid email';
              } else {
                return null;
              }
            },
          ),
          verticalSpacing(space: 16),
          PasswordField(
            label: 'Password',
            hint: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return 'Password must be more than 6 characters';
              } else {
                return null;
              }
            },
            controller: passwordController,
          ),
          verticalSpacing(space: 24),
          PrimaryButton(
            title: 'Login',
            onPressed: () {
              onLoginPress();
            },
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
      ),
    );
  }
}
