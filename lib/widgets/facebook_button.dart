import 'package:flutter/material.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/styles.dart';
import 'package:svg_flutter/svg.dart';

class FacebookButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const FacebookButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

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
        icon: SvgPicture.asset('assets/ic_facebook.svg'),
        style: TextButton.styleFrom(
          backgroundColor: ColorHex('#0056B2'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
