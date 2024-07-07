import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colors.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/spacing.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Email Address',
          textAlign: TextAlign.left,
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: ColorHex('#0C092A'),
          ),
        ),
        verticalSpacing(space: 8),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            iconColor: primaryColor,
            prefixIcon: SvgPicture.asset(
              'assets/ic_email.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            hintText: 'Your email address',
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: ColorHex('#858494'),
            ),
          ),
        ),
      ],
    );
  }
}
