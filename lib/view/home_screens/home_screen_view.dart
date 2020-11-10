import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/widget/vertical_spacing.dart';

class HomeScreenView extends StatefulWidget {
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            VerticalSpacing(height: 0.04),
            Center(
                child: Image.asset(
              'assets/image/logo.png',
              height: 100,
            )),
          ],
        ),
      ),
    );
  }
}
