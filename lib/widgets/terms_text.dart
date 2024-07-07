import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colorhex.dart';


class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By continuing you agree to the ',
        style: GoogleFonts.rubik(
          fontSize: 14,
          color: ColorHex('#858494'),
        ),
        children: [
          TextSpan(
              text: 'Terms of Services',
              style: GoogleFonts.rubik(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text: ' &',
                    style: GoogleFonts.rubik(
                      fontSize: 14,
                      color: ColorHex('#858494'),
                    ),
                    children: [
                      TextSpan(
                          text: ' Privacy Policy',
                          style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))
                    ]),
              ]),
        ],
      ),
    );
  }
}
