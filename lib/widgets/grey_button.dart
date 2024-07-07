import 'package:flutter/material.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/styles.dart';


class GreyButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const GreyButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: ColorHex('#E6E6E6'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        onPressed: onPressed,
        child: Text(
          title,
          style: buttonTextStylePrimary,
        ),
      ),
    );
  }
}
