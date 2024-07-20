import 'dart:io';

import 'package:flutter/material.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/fonts.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:queezy/widgets/primary_button.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';

class ChooseCategoryPage extends StatefulWidget {
  const ChooseCategoryPage({super.key});

  @override
  State<ChooseCategoryPage> createState() => _ChooseCategoryPageState();
}

class _ChooseCategoryPageState extends State<ChooseCategoryPage> {
  int selectedItem = -1;
  bool isButtonEnable = false;

  selectItem(itemIndex) {
    selectedItem = itemIndex;
    isButtonEnable = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Category',
          style: titleTextStyleWhite,
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: primaryColor,
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: MediaQuery.of(context).size.height -
            (Platform.isAndroid ? 105 : 150),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            verticalSpacing(space: 16),
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      selectItem(index);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 24),
                      decoration: BoxDecoration(
                        color: selectedItem == index
                            ? ColorHex('#FF8FA2')
                            : ColorHex('#EFEEFC'),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: selectedItem == index
                                  ? ColorHex('#FFA5B5')
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            width: 54,
                            height: 54,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                width: 24,
                                height: 24,
                                'assets/ic_music.svg',
                                colorFilter: selectedItem == index
                                    ? const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn)
                                    : ColorFilter.mode(
                                        primaryColor, BlendMode.srcIn),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          verticalSpacing(space: 8),
                          Text(
                            'Music',
                            style: selectedItem == index
                                ? rubikMedium16White
                                : rubikMedium16Primary,
                          ),
                          verticalSpacing(space: 4),
                          Text(
                            '18 Quizzes',
                            style: selectedItem == index
                                ? rubik12White
                                : rubik12Primary,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
              ),
            ),
            verticalSpacing(space: 16),
            SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  title: 'Choose',
                  onPressed: () {
                    Navigator.pop(context, 'Music');
                  },
                  isEnable: isButtonEnable,
                )),
            verticalSpacing(space: 16),
          ],
        ),
      ),
    );
  }
}
