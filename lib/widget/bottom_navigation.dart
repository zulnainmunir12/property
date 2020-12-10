import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/ui/shared/app_colors.dart';
import 'package:property/ui/shared/font_size.dart';
import 'package:property/view/home_screens/home_screen_view.dart';
import 'package:property/view/home_screens/more_screen_view.dart';
import 'package:property/view/home_screens/plots_screen_view.dart';
import 'package:property/view/home_screens/prime_screen_view.dart';
import 'package:property/view/home_screens/project_screen_view.dart';

class MyBottomNavigationBar extends StatefulWidget {
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  final NavigationService _navigationService = locator<NavigationService>();
  int _currentIndex = 0;

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeScreenView(),
    ProjectScreenView(),
    PrimeScreenView(),
    PlotScreenView(),
    MoreScreenView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColor.whiteColor,
      currentIndex: _currentIndex,
      iconSize: 30,
      selectedFontSize: FontSize.l,
      unselectedFontSize: FontSize.m,
      selectedItemColor: AppColor.primaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          label: 'Project',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Prime'),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Plot',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.drag_handle_rounded),
          label: 'More',
        ),
      ],
      onTap: onTappedBar,
    );
  }
}
