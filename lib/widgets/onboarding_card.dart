import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/utils/styles.dart';

class OnboardingCard extends StatelessWidget {
  final String cardText;

  const OnboardingCard({super.key, required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                cardText,
                style: onBoardingTextStyle,
                textAlign: TextAlign.center,
              ),
              verticalSpacing(space: 26),
              SizedBox(
                height: 54,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Sign up',
                    style: buttonTextStyle,
                  ),
                ),
              ),
              verticalSpacing(space: 16),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: alreadyHaveAccountTextStyle,
                      children: [
                        TextSpan(
                          text: ' Login',
                          style: loginTextStyle,
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
