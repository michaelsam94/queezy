import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/colors.dart';
import '../utils/fonts.dart';
import '../utils/spacing.dart';
import '../widgets/circular_progress.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [primaryColor, Colors.white],
          stops: const [0.8, 0.2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //region greeting and user image
            verticalSpacing(space: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sunny,
                            color: ColorHex('#FFD6DD'),
                          ),
                          horizontalSpacing(space: 4),
                          Text(
                            'GOOD MORNING',
                            style: GoogleFonts.rubik(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: ColorHex('#FFD6DD'),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Text(
                        'Madlelyn Dias',
                        style: GoogleFonts.rubik(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/img_avatar.svg'),
                ],
              ),
            ),
            //endregion

            //region recent quiz
            Container(
              margin: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: ColorHex('#FFCCD5'),
                image: const DecorationImage(
                  image: ExactAssetImage('assets/bg_recent_quiz.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent Quiz',
                          style: rubikMedium14RoseWoodWithOpacity,
                        ),
                        verticalSpacing(space: 8),
                        Row(
                          children: [
                            SvgPicture.asset('assets/ic_headphone.svg'),
                            horizontalSpacing(space: 8),
                            Text(
                              'A Basic Music Quiz',
                              style: rubikMedium14RoseWood,
                            ),
                          ],
                        )
                      ],
                    ),
                    const CircularProgress(
                      progress: 25,
                    )
                  ],
                ),
              ),
            ),

            //endregion

            //region featured
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: ColorHex('#9087E5'),
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                  image: AssetImage('assets/bg_featured.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    SvgPicture.asset('assets/img_avatar_one.svg'),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          verticalSpacing(space: 8),
                          Text(
                            'Featured',
                            style: rubikMedium14WhiteWithOpacity,
                          ),
                          verticalSpacing(space: 18),
                          Text(
                            'Take part in challenges \n with frindes or other \n players',
                            textAlign: TextAlign.center,
                            style: rubikMedium18White,
                          ),
                          verticalSpacing(space: 14),
                          TextButton.icon(
                            onPressed: () {},
                            label: Text('Find Friends'),
                            icon: SvgPicture.asset('assets/ic_circle.svg'),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 110),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: SvgPicture.asset('assets/img_avatar_two.svg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //endregion

            //region live quizzes
            verticalSpacing(space: 24),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Live Quizzes',
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
                      )
                    ],
                  ),
                ),
              ),
            ),
            //endregion
          ],
        ),
      ),
    );
  }
}
