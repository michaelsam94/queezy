import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colors.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/spacing.dart';

class EmailField extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;

  const EmailField({super.key, this.validator, required this.controller});

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
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (validator != null) return validator!(value);
          },
          controller: controller,
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
            border: OutlineInputBorder(
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
