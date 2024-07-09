import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:svg_flutter/svg.dart';

class GoogleButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const GoogleButton({
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
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: ColorHex('#0C092A')
          ),
        ),
        icon: SvgPicture.asset('assets/ic_google.svg'),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
