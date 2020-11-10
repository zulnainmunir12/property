import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/ui/shared/app_colors.dart';
import 'package:property/ui/shared/font_size.dart';
import 'package:property/view/home_screens/home_screen_view.dart';
import 'package:property/view/home_screens/more_screen_view.dart';
import 'package:property/view/home_screens/plots_screen_view.dart';
import 'package:property/view/home_screens/premium_screen_view.dart';
import 'package:property/view/home_screens/project_screen_view.dart';

class MyBottomNavigationBar extends StatefulWidget {
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  final NavigationService _navigationService = locator<NavigationService>();
  int _currentIndex = 0;
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    HomeScreenView(),
    ProjectScreenView(),
    PremiumScreenView(),
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
      selectedItemColor: AppColor.redColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          title: Text('Projects'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          title: Text('Premium'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          title: Text('Plots'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.drag_handle_rounded),
          title: Text('More'),
        ),
      ],
      onTap: onTappedBar,
    );
  }
}
