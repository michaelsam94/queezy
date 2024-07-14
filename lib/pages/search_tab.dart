import 'package:flutter/material.dart';
import 'package:queezy/pages/search_tab_initial.dart';
import 'package:queezy/pages/search_tab_recent.dart';
import 'package:queezy/utils/colors.dart';
import 'package:queezy/utils/styles.dart';
import 'package:svg_flutter/svg.dart';

import '../utils/colorhex.dart';
import '../utils/fonts.dart';

class SearchTab extends StatefulWidget {
  final Function(bool) onChangeBottomNavBarVisibility;

  SearchTab({super.key, required this.onChangeBottomNavBarVisibility});

  TextEditingController controller = TextEditingController();

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  late List<Widget> searchPages;

  int _recentSelectedTab = 0;

  int _selectedSearchPage = 0;

  bool _backButtonShown = false;
  final FocusNode _focusNode = FocusNode();

  bool _showInitialSearchPage = true;

  onBackPress() {
    widget.controller.clear();
    FocusScope.of(context).unfocus();
    setSelectedSearchPage(0);
  }

  toggleBottomNavBarVisibility(isVisible) {
    if (isVisible) {
      _backButtonShown = false;
    } else {
      _backButtonShown = true;
    }

    widget.onChangeBottomNavBarVisibility(isVisible);
    setState(() {});
  }

  toggleInitialSearchView(isVisible) {
    _showInitialSearchPage = isVisible;
    setState(() {});
  }

  @override
  void initState() {
    searchPages = [
      SearchTabInitial(
          onChangeBottomNavBarVisibility:
              widget.onChangeBottomNavBarVisibility),
      SearchTabRecent(
        query: '',
      ),
    ];
    super.initState();
  }

  setRecentQuery(query) {
    searchPages = [
      SearchTabInitial(
          onChangeBottomNavBarVisibility:
              widget.onChangeBottomNavBarVisibility),
      SearchTabRecent(
        query: query,
      ),
    ];
    setState(() {});
  }

  setSelectedSearchPage(pageNum) {
    _selectedSearchPage = pageNum;
    switch (_selectedSearchPage) {
      case 0:
        {
          toggleBottomNavBarVisibility(true);
        }
        break;
      case 1:
        {
          toggleBottomNavBarVisibility(false);
        }
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Discover',
          style: titleTextStyleWhite,
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        leading: Visibility(
          visible: _selectedSearchPage != 0,
          child: GestureDetector(
            onTap: () {
              onBackPress();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryColor, Colors.white],
              stops: const [0.1, 0.8],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 24,
                  right: 24,
                ),
                decoration: BoxDecoration(
                  color: ColorHex('#0C092A').withOpacity(0.16),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                  height: 56,
                  child: Center(
                    child: Focus(
                      onFocusChange: (hasFocus) {
                        if (hasFocus ||
                            (!hasFocus && widget.controller.text.isNotEmpty)) {
                          setSelectedSearchPage(1);
                          setRecentQuery(widget.controller.text);
                        } else {
                          setSelectedSearchPage(0);
                        }
                      },
                      child: TextField(
                        controller: widget.controller,
                        focusNode: _focusNode,
                        style: rubik16White,
                        textInputAction: TextInputAction.search,
                        cursorColor: Colors.white,
                        onChanged: (value) {
                          setSelectedSearchPage(1);
                          setRecentQuery(value);
                        },
                        decoration: InputDecoration(
                          hintStyle: rubik16Grey,
                          hintText: 'Quiz, categories, or friends',
                          contentPadding: EdgeInsets.zero,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              'assets/ic_search.svg',
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                          ),
                          fillColor: Colors.transparent,
                          filled: true,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                        onSubmitted: (value) {
                          print('submitted');
                          print(widget);
                          widget.onChangeBottomNavBarVisibility(value.isEmpty);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: searchPages[_selectedSearchPage],
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
