import 'package:flutter/material.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/widgets/email_field.dart';
import 'package:queezy/widgets/primary_button.dart';
import 'package:queezy/widgets/progressbar.dart';

import '../utils/styles.dart';

class EnterEmailPage extends StatelessWidget {
  const EnterEmailPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const EmailField(),
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
                    Navigator.pushNamed(context, '/enter_password');
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
