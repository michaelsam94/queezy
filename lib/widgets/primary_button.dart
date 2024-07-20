import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/styles.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  bool isEnable = false;

  final Function() onPressed;

  PrimaryButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.isEnable = true});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              widget.isEnable ? primaryColor : primaryColor.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: widget.isEnable ? widget.onPressed : null,
        child: Text(
          widget.title,
          style: buttonTextStyleWhite,
        ),
      ),
    );
  }
}
