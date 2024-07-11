import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:queezy/states/signup_state.dart';
import 'package:queezy/services/auth_service.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/progressbar.dart';
import 'package:queezy/widgets/username_field.dart';

import '../utils/spacing.dart';
import '../utils/utils.dart';
import '../widgets/primary_button.dart';

class EnterUsernamePage extends StatelessWidget {
  EnterUsernamePage({super.key});

  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();

  setUserName(BuildContext context) async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      showProgressDialog(context);
      context.read<SignupState>().username = usernameController.text;
      await context.read<AuthService>().signUp(
          email: context.read<SignupState>().email,
          password: context.read<SignupState>().password,
          username: context.read<SignupState>().username,
          onComplete: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/home');
          },
          onError: (error) {
            Navigator.pop(context);
            switch (error) {
              case SignUpError.emailAlreadyInUse:
                showSnackBar(
                    context: context, text: 'Email already registered');
                break;
              case SignUpError.weakPassword:
                showSnackBar(context: context, text: 'The password is weak');
                break;
              default:
                showSnackBar(
                    context: context,
                    text: 'There is an error in creating account');
            }
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Create a username',
          style: titleTextStyleBlack,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UsernameField(
                controller: usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 5) {
                    return 'user must be more than 5 characters';
                  } else {
                    return null;
                  }
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Progressbar(
                      progressName: 'assets/img_progress_three.svg',
                      currentStep: '3 of 3'),
                  verticalSpacing(space: 24),
                  PrimaryButton(
                    title: 'Go to Home',
                    onPressed: () {
                      setUserName(context);
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
