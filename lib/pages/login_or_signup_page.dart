import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/grey_button.dart';
import 'package:queezy/widgets/primary_button.dart';
import 'package:queezy/widgets/transparent_button_grey_text.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/spacing.dart';
import '../widgets/background.dart';

class LoginOrSignupPage extends StatelessWidget {
  const LoginOrSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(
        imgName: 'assets/bg_login_or_signup.svg',
      ),
      Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Background(imgName: 'assets/bg_login_or_signup.svg'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                verticalSpacing(space: 60),
                SvgPicture.asset(
                  'assets/logo.svg',
                  width: 56,
                  height: 56,
                ),
                Text(
                  'Queezy',
                  style: appNameTextStyle,
                ),
                Expanded(
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/img_login_or_signup.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'Login or Sign Up',
                            style: loginOrSignupTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          verticalSpacing(space: 5),
                          Text(
                            'Login or create an account to take quiz, take part in challenge, and more.',
                            textAlign: TextAlign.center,
                            style: loginOrCreateAccountTextStyle,
                          ),
                          verticalSpacing(space: 24),
                          PrimaryButton(
                            title: 'Login',
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                          ),
                          verticalSpacing(space: 16),
                          GreyButton(
                            title: 'Create an account',
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                          verticalSpacing(space: 16),
                          TransparentButtonGreyText(
                            title: 'Later',
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
