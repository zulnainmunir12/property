import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/ui/shared/app_colors.dart';
import 'package:property/ui/shared/font_size.dart';
import 'package:property/widget/horizontal_spacing.dart';
import 'package:property/widget/vertical_spacing.dart';

class ProjectScreenView extends StatefulWidget {
  _ProjectScreenViewState createState() => _ProjectScreenViewState();
}

class _ProjectScreenViewState extends State<ProjectScreenView> {
  int i = 0;
  TabController _tabController;
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [_tabs()],
        ),
      ),
    );
  }

  _tabs() {
    return Material(
      elevation: 7,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.7,
          child: Column(
            children: [
              VerticalSpacing(height: 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Row(
                  children: [
                    FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Projects',
                          style: TextStyle(
                              color: AppColor.blackColor,
                              fontSize: FontSize.xxl,
                              fontWeight: FontWeight.bold),
                        )),
                    FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColor.redColor,
                            ),
                            HorizontalSpacing(width: 0.01),
                            Text(
                              'Cities',
                              style: TextStyle(
                                  color: AppColor.blackColor,
                                  fontSize: FontSize.xxl,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 400,
                color: AppColor.lightestGrey,
              ),
              VerticalSpacing(height: 0.01),
              DefaultTabController(
                  length: 3,
                  initialIndex: 1,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: AppColor.redColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.lightestGrey)),
                            child: Center(
                              child: Column(
                                children: [
                                  VerticalSpacing(height: 0.01),
                                  Image.asset(
                                    'assets/image/residental_logo.png',
                                    height: 35,
                                  ),
                                  VerticalSpacing(height: 0.01),
                                  Text(
                                    'All',
                                    style: TextStyle(
                                        color: AppColor.blackColor,
                                        fontSize: FontSize.l),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.lightestGrey)),
                            child: Center(
                              child: Column(
                                children: [
                                  VerticalSpacing(height: 0.01),
                                  Icon(
                                    Icons.apartment,
                                    size: 35,
                                    color: AppColor.darkGrey,
                                  ),
                                  VerticalSpacing(height: 0.01),
                                  Text(
                                    'Residential',
                                    style: TextStyle(
                                        color: AppColor.blackColor,
                                        fontSize: FontSize.l),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColor.lightestGrey)),
                            child: Center(
                              child: Column(
                                children: [
                                  VerticalSpacing(height: 0.01),
                                  Image.asset(
                                    'assets/image/commercial_logo.png',
                                    height: 35,
                                  ),
                                  VerticalSpacing(height: 0.01),
                                  Text(
                                    'Commercial',
                                    style: TextStyle(
                                        color: AppColor.blackColor,
                                        fontSize: FontSize.l),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
