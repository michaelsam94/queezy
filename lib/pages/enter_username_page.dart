import 'package:flutter/material.dart';
import 'package:queezy/utils/styles.dart';
import 'package:queezy/widgets/progressbar.dart';
import 'package:queezy/widgets/username_field.dart';

import '../utils/spacing.dart';
import '../widgets/primary_button.dart';

class EnterUsernamePage extends StatelessWidget {
  const EnterUsernamePage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            const UsernameField(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Progressbar(
                    progressName: 'assets/img_progress_three.svg',
                    currentStep: '3 of 3'),
                verticalSpacing(space: 24),
                PrimaryButton(
                  title: 'Go to Home',
                  onPressed: () {},
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
