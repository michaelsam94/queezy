import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/facebook_button.dart';
import 'package:queezy/widgets/google_button.dart';
import 'package:queezy/widgets/login_form.dart';

import '../services/auth_service.dart';
import '../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> loginUser(BuildContext context) async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      isLoading = true;
      print(emailController.text);
      print(passwordController.text);
      showProgressDialog(context);
      await context.read<AuthService>().signIn(
            email: emailController.text,
            password: passwordController.text,
            onComplete: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/home');
            },
            onError: () {
              Navigator.pop(context);
              showSnackBar(
                  context: context, text: 'Email or Password not correct');
            },
          );
    }
  }

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
              LoginForm(
                formKey: _formKey,
                emailController: emailController,
                passwordController: passwordController,
                onLoginPress: () {
                  loginUser(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
