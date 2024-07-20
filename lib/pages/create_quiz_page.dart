import 'dart:io';

import 'package:flutter/material.dart';
import 'package:queezy/utils/colorhex.dart';
import 'package:queezy/utils/fonts.dart';
import 'package:queezy/utils/spacing.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';
import '../widgets/primary_button.dart';

class CreateQuizPage extends StatefulWidget {
  const CreateQuizPage({super.key});

  @override
  State<CreateQuizPage> createState() => _CreateQuizPageState();
}

class _CreateQuizPageState extends State<CreateQuizPage> {
  String selectedCategory = 'Choose quiz category';

  void _chooseCategory() async {
    final result = await Navigator.pushNamed(context, '/choose_category');
    if (result != null && result is String) {
      setState(() {
        selectedCategory = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(
          'Create Quiz',
          style: titleTextStyleWhite,
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height -
              (Platform.isAndroid ? 105 : 150),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: ColorHex('#EFEEFC'),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/ic_image.svg'),
                        Text(
                          'Add Cover Image',
                          style: rubikMedium16Primary,
                        )
                      ],
                    ),
                  ),
                ),
                verticalSpacing(space: 24),
                Text(
                  'Title',
                  style: rubikMedium16RichBlack,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter quiz title',
                      hintStyle: rubik16RomanSilver,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: ColorHex('#DADADA').withOpacity(0.5)),
                      ),
                    ),
                  ),
                ),
                verticalSpacing(space: 20),
                Text(
                  'Quiz Category',
                  style: rubikMedium16RichBlack,
                ),
                verticalSpacing(space: 10),
                GestureDetector(
                  onTap: _chooseCategory,
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: ColorHex('#DADADA'),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedCategory,
                            style: rubik16RomanSilver,
                          ),
                          SvgPicture.asset(
                            'assets/ic_right_arrow.svg',
                            colorFilter:
                                ColorFilter.mode(Colors.black, BlendMode.srcIn),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                verticalSpacing(space: 24),
                Text(
                  'Description',
                  style: rubikMedium16RichBlack,
                ),
                verticalSpacing(space: 10),
                SizedBox(
                  height: 100,
                  child: TextField(
                    minLines: 3,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: 'Enter quiz description',
                      hintStyle: rubik16RomanSilver,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: ColorHex('#DADADA'),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16),
                      width: double.infinity,
                      child: PrimaryButton(
                        title: 'Add Question',
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
