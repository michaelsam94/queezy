import 'package:flutter/material.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/fonts.dart';

class SearchTopSection extends StatelessWidget {
  const SearchTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpacing(space: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quiz',
                style: rubikMedium20RichBlack,
              ),
              Text(
                'See all',
                style: rubikMedium14Primary,
              ),
            ],
          ),
          verticalSpacing(space: 16),
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: ColorHex('#EFEEFC'),
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/img_quiz.svg'),
                  horizontalSpacing(space: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Statistics Math Quiz'),
                        verticalSpacing(space: 16),
                        Text('Math . 12 Quizzes'),
                      ],
                    ),
                  ),
                  SvgPicture.asset('assets/ic_right_arrow.svg'),
                ],
              ),
            ),
          ),
          verticalSpacing(space: 16),
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: ColorHex('#EFEEFC'),
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/img_quiz.svg'),
                  horizontalSpacing(space: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Statistics Math Quiz'),
                        verticalSpacing(space: 16),
                        Text('Math . 12 Quizzes'),
                      ],
                    ),
                  ),
                  SvgPicture.asset('assets/ic_right_arrow.svg'),
                ],
              ),
            ),
          ),
          verticalSpacing(space: 16),
          Text(
            'Friends',
            style: rubikMedium20RichBlack,
          ),
          verticalSpacing(space: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    width: 56,
                    height: 56,
                    'assets/ic_top_person.png',
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/ic_russian_flag.png',
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ),
                ],
              ),
              horizontalSpacing(space: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brandon Matrovs',
                    style: rubikMedium16RichBlack,
                  ),
                  verticalSpacing(space: 4),
                  Text(
                    '124 points',
                    style: rubik14RomanSilver,
                  ),
                ],
              )
            ],
          ),
          verticalSpacing(space: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    width: 56,
                    height: 56,
                    'assets/ic_top_person.png',
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/ic_russian_flag.png',
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ),
                ],
              ),
              horizontalSpacing(space: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brandon Matrovs',
                    style: rubikMedium16RichBlack,
                  ),
                  verticalSpacing(space: 4),
                  Text(
                    '124 points',
                    style: rubik14RomanSilver,
                  ),
                ],
              )
            ],
          ),
          verticalSpacing(space: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    width: 56,
                    height: 56,
                    'assets/ic_top_person.png',
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/ic_russian_flag.png',
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ),
                ],
              ),
              horizontalSpacing(space: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brandon Matrovs',
                    style: rubikMedium16RichBlack,
                  ),
                  verticalSpacing(space: 4),
                  Text(
                    '124 points',
                    style: rubik14RomanSilver,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
