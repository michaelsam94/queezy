import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/styles.dart';

class PrimaryButtonWithIcon extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Widget icon;

  const PrimaryButtonWithIcon(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton.icon(
        onPressed: onPressed,
        label: Text(
          title,
          style: buttonTextStyleWhite,
        ),
        icon: icon,
        style: TextButton.styleFrom(
          iconColor: Colors.white,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
