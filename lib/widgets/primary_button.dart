import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/styles.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const PrimaryButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: onPressed,
        child: Text(
          title,
          style: buttonTextStyleWhite,
        ),
      ),
    );
  }
}
