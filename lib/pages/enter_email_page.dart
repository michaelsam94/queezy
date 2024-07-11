import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:queezy/states/signup_state.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/widgets/email_field.dart';
import 'package:queezy/widgets/primary_button.dart';
import 'package:queezy/widgets/progressbar.dart';

import '../utils/styles.dart';
import '../utils/utils.dart';

class EnterEmailPage extends StatelessWidget {
  EnterEmailPage({super.key});

  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  void setEmail(BuildContext context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      context.read<SignupState>().email = emailController.text;
      Navigator.pushNamed(context, '/enter_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'What\'s your email',
          style: titleTextStyleBlack,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Progressbar(
                      progressName: 'assets/img_progress_one.svg',
                      currentStep: '1 of 3'),
                  verticalSpacing(space: 24),
                  PrimaryButton(
                    title: 'Next',
                    onPressed: () {
                      setEmail(context);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
