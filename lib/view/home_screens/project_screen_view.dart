import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/ui/shared/app_colors.dart';
import 'package:property/ui/shared/font_size.dart';
import 'package:property/widget/horizontal_spacing.dart';
import 'package:property/widget/vertical_spacing.dart';
import 'dart:core';

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
        children: [
          _tabs(),
          VerticalSpacing(height: 0.01),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                padding: EdgeInsets.all(10.0),
                itemBuilder: (BuildContext context, int index) {
                  return _itemCard();
                }),
          )
        ],
      ),
    ));
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
                              fontWeight: FontWeight.w500),
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
                                  fontWeight: FontWeight.w500),
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
                    indicatorColor: AppColor.primaryColor,
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

  _itemCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 7,
        child: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
          ),
          child: Column(
            children: [
              VerticalSpacing(height: 0.03),
              Stack(
                children: [
                  Image.asset(
                    'assets/image/project.png',
                    width: 360,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                      right: 10,
                      child: SizedBox(
                        width: 120,
                        child: RaisedButton(
                          onPressed: () {},
                          color: AppColor.blackColor.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0))),
                          child: Center(
                            child: Text(
                              'Flat',
                              style: TextStyle(
                                  color: AppColor.whiteColor,
                                  fontSize: FontSize.l,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height / 14,
                        color: AppColor.blackColor.withOpacity(0.4),
                        child: Padding(
                          padding: EdgeInsets.only(left: 280, top: 15),
                          child: Text(
                            'Nevita',
                            style: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: FontSize.l),
                          ),
                        ),
                      )),
                ],
              ),
              VerticalSpacing(height: 0.03),
              Row(
                children: [
                  HorizontalSpacing(width: 00.1),
                  Text(
                    'Third Istanbul Project | 3.Istanbul \n'
                    '                 Istanbul|Turkey',
                    style: TextStyle(fontSize: FontSize.m),
                  ),
                  HorizontalSpacing(width: 0.06),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: AppColor.primaryColor)),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone,color: AppColor.primaryColor,),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
