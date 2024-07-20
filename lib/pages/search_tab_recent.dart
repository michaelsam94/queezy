import 'dart:io';

import 'package:flutter/material.dart';
import 'package:queezy/pages/search_categories_section.dart';
import 'package:queezy/pages/search_friends_section.dart';
import 'package:queezy/pages/search_quiz_section.dart';
import 'package:queezy/pages/search_top_section.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/fonts.dart';
import '../utils/spacing.dart';
import '../widgets/search_tab_option.dart';

class SearchTabRecent extends StatefulWidget {
  final String query;

  SearchTabRecent({super.key, required this.query});

  @override
  State<SearchTabRecent> createState() => _SearchTabRecentState();
}

class _SearchTabRecentState extends State<SearchTabRecent> {
  late List<SearchTabOption> tabsOptions;
  late List<Widget> tabPages;
  int selectedTab = 0;

  @override
  void initState() {
    tabsOptions = [
      SearchTabOption(
        title: 'Top',
        isSelected: true,
        onSelect: () {
          setSelectedTab(0);
        },
      ),
      SearchTabOption(
        title: 'Quiz',
        isSelected: false,
        onSelect: () {
          setSelectedTab(1);
        },
      ),
      SearchTabOption(
        title: 'Categories',
        isSelected: false,
        onSelect: () {
          setSelectedTab(2);
        },
      ),
      SearchTabOption(
        title: 'Friends',
        isSelected: false,
        onSelect: () {
          setSelectedTab(3);
        },
      ),
    ];
    tabPages = [
      SearchTopSection(),
      SearchQuizSection(),
      SearchCategoriesSection(),
      SearchFriendsSection(),
    ];
    if (widget.query.isNotEmpty) {
      setSelectedTab(0);
    }
    super.initState();
  }

  setSelectedTab(position) {
    selectedTab = position;
    tabsOptions = [
      SearchTabOption(
        title: 'Top',
        isSelected: selectedTab == 0,
        onSelect: () {
          setSelectedTab(0);
        },
      ),
      SearchTabOption(
        title: 'Quiz',
        isSelected: selectedTab == 1,
        onSelect: () {
          setSelectedTab(1);
        },
      ),
      SearchTabOption(
        title: 'Categories',
        isSelected: selectedTab == 2,
        onSelect: () {
          setSelectedTab(2);
        },
      ),
      SearchTabOption(
        title: 'Friends',
        isSelected: selectedTab == 3,
        onSelect: () {
          setSelectedTab(3);
        },
      ),
    ];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          child: SvgPicture.asset(
            'assets/bg_discover.svg',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          child: SvgPicture.asset('assets/ic_dot.svg'),
          top: 10,
          left: (MediaQuery.of(context).size.width / 2) - 3,
        ),
        Positioned(
          top: 95,
          left: 24,
          right: 24,
          child: widget.query.isEmpty
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent Searches',
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
                  ],
                )
              : tabPages[selectedTab],
        ),
        Container(
          margin: const EdgeInsets.only(top: 48),
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: tabsOptions,
          ),
        ),
      ],
    );
  }
}
