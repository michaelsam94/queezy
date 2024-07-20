import 'package:flutter/material.dart';
import 'package:queezy/pages/home_tab.dart';
import 'package:queezy/pages/leaderboard_tab.dart';
import 'package:queezy/pages/profile_tab.dart';
import 'package:queezy/pages/search_tab.dart';
import 'package:queezy/pages/search_tab_initial.dart';
import 'package:queezy/utils/colors.dart';
import 'package:svg_flutter/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isBottomBarVisible = true;

  bool isBottomNavBarVisible = true;
  late List<Widget> _pageOptions;

  void _setBottomBarVisibility(bool isVisible) {
    _isBottomBarVisible = isVisible;
    setState(() {});
  }

  @override
  void initState() {
    _pageOptions = [
      HomeTab(),
      SearchTab(
        onChangeBottomNavBarVisibility: (value) =>
            _setBottomBarVisibility(value),
      ),
      LeaderboardTab(),
      ProfileTab(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: Visibility(
        visible: _isBottomBarVisible,
        child: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Colors.white,
          shadowColor: Colors.black,
          notchMargin: 8,
          elevation: 100,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            enableFeedback: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 100,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.grey,
            unselectedItemColor: Colors.white,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/ic_home.svg'),
                  activeIcon: SvgPicture.asset('assets/ic_home_selected.svg'),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/ic_search.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/ic_search.svg',
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/ic_leaderboard.svg'),
                  activeIcon: SvgPicture.asset(
                    'assets/ic_leaderboard.svg',
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/ic_profile.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/ic_profile.svg',
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: _isBottomBarVisible,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: primaryColor,
          onPressed: () {
            Navigator.pushNamed(context, '/create_quiz');
          },
          elevation: 0,
          child: const Icon(
            Icons.add,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
