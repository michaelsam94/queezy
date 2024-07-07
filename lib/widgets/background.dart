import 'package:flutter/material.dart';
import 'package:queezy/utils/colors.dart';
import 'package:svg_flutter/svg.dart';

class Background extends StatelessWidget {
  String imgName;

  Background({super.key, required this.imgName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Stack(
        children: [
          SvgPicture.asset(
            imgName,
          ),
        ],
      ),
    );
  }
}
