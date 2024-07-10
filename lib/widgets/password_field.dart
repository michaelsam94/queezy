import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colors.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/spacing.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final String hint;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;

  const PasswordField({
    Key? key,
    required this.label,
    required this.hint,
    this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.label,
          textAlign: TextAlign.left,
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: ColorHex('#0C092A'),
          ),
        ),
        verticalSpacing(space: 8),
        TextFormField(
          obscureText: !_passwordVisible,
          enableSuggestions: false,
          autocorrect: false,
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            iconColor: primaryColor,
            prefixIcon: SvgPicture.asset(
              'assets/ic_password.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
              child: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            hintText: widget.hint,
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xFF858494),
            ),
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
          ),
        ),
      ],
    );
  }
}
