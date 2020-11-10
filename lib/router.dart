import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/view/home_screens/home_screen_view.dart';
import 'package:property/view/splash_screen_view.dart';
import 'package:property/widget/bottom_navigation.dart';

class NavigationRouter {
  static const String splashScreen = 'SplashScreen';
  static const String homeView = 'HomeView';
  static const String bottomNavigation = 'BottomNavigation';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreenView(),
        );
      case homeView:
        return MaterialPageRoute(builder: (_)=> HomeScreenView());
      case bottomNavigation:
        return MaterialPageRoute(builder: (_)=> MyBottomNavigationBar());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
