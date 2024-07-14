import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:queezy/utils/fonts.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/spacing.dart';

class SearchTabOption extends StatefulWidget {
  String title;
  bool isSelected;
  VoidCallback onSelect;

  SearchTabOption(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onSelect});

  @override
  State<SearchTabOption> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTabOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelect,
      child: Column(
        children: [
          widget.isSelected
              ? Text(
                  widget.title,
                  style: rubikBold14Primary,
                )
              : Text(
                  widget.title,
                  style: rubik14Grey,
                ),
          verticalSpacing(space: 8),
          Visibility(
            visible: widget.isSelected,
            child: SvgPicture.asset('assets/ic_dot.svg'),
          ),
        ],
      ),
    );
  }
}
