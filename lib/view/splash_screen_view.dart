import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/router.dart';

class SplashScreenView extends StatefulWidget {
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final NavigationService _navigationService = locator<NavigationService>();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () => _navigationService.navigateTo(NavigationRouter.bottomNavigation));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/image/splash.png',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
