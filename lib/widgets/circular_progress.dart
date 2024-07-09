import 'package:flutter/material.dart';

import '../utils/colorhex.dart';
import '../utils/fonts.dart';


class CircularProgress extends StatelessWidget {
  final int progress;
  const CircularProgress({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(
            value: progress / 100,
            // Convert percentage to a value between 0.0 and 1.0
            backgroundColor: ColorHex('#FFB3C0'),
            valueColor:
            AlwaysStoppedAnimation<Color>(ColorHex('#FF8FA2')),
            strokeWidth: 33.0,
          ),
        ),
        Text(
          '${progress.toInt()}%',
          style: rubikMedium14White,
        ),
      ],
    );
  }
}
