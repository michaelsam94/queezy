import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:svg_flutter/svg.dart';

class Progressbar extends StatelessWidget {
  final String progressName;
  final String currentStep;
  const Progressbar({super.key, required this.progressName, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          currentStep,
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: primaryColor,
          ),
          textAlign: TextAlign.end,
        ),
        verticalSpacing(space: 16),
        SvgPicture.asset(progressName),
      ],
    );
  }
}
