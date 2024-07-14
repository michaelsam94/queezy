import 'package:flutter/material.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/fonts.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colors.dart';
import '../utils/spacing.dart';

class SearchTabInitial extends StatefulWidget {
  final Function(bool) onChangeBottomNavBarVisibility;

  SearchTabInitial({super.key, required this.onChangeBottomNavBarVisibility});

  TextEditingController controller = TextEditingController();

  @override
  State<SearchTabInitial> createState() => _SearchTabInitialState();
}

class _SearchTabInitialState extends State<SearchTabInitial> {
  bool _backButtonShown = false;
  final FocusNode _focusNode = FocusNode();

  toggleBottomNavBarVisibility(isVisible) {
    if (isVisible) {
      _backButtonShown = false;
      widget.controller.clear();
      _focusNode.unfocus();
    } else {
      _backButtonShown = true;
    }

    widget.onChangeBottomNavBarVisibility(isVisible);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, Colors.white],
            stops: const [0.8, 0.2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(24),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg_top_pick.png'),
                ),
              ),
              child: SizedBox(
                height: 163,
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 14,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorHex('#FF8FA2'),
                        ),
                        child: Text(
                          'TOP PICKS',
                          style: rubikMedium12White,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 16,
                        left: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Travel Trivia Quiz',
                            style: rubikMedium16RoseWood,
                          ),
                          verticalSpacing(space: 4),
                          Row(
                            children: [
                              SvgPicture.asset('assets/ic_mic.svg'),
                              horizontalSpacing(space: 8),
                              Text(
                                'Music • 5 Quizzes',
                                style: rubik12RoseWood,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34),
                  topRight: Radius.circular(34),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Top rank of the week',
                              style: rubikMedium20RichBlack,
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.all(2.0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/bg_top_rank.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 92,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    horizontalSpacing(space: 14),
                                    Stack(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/ic_empty_circle.svg'),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '1',
                                              style: rubikMedium12White,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    horizontalSpacing(space: 10),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Brandon Matrovs',
                                          style: rubikMedium16White,
                                        ),
                                        verticalSpacing(space: 4),
                                        Text(
                                          '124 points',
                                          style: rubik14White,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(right: 16),
                                    child: SvgPicture.asset(
                                        'assets/ic_crown.svg')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  verticalSpacing(space: 16),
                  Text(
                    'Categories',
                    style: rubikMedium20RichBlack,
                  ),
                  verticalSpacing(space: 16),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: ColorHex('#88E2CE'),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/ic_math.svg'),
                            Text(
                              'Math',
                              style: rubikMedium16White,
                            ),
                            Text(
                              '21 Quizzes',
                              style: rubik12White,
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
