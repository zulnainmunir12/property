import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/ui/shared/app_colors.dart';
import 'package:property/ui/shared/font_size.dart';
import 'package:property/widget/horizontal_spacing.dart';
import 'package:property/widget/vertical_spacing.dart';

class PlotScreenView extends StatefulWidget {
  _PlotScreenViewState createState() => _PlotScreenViewState();
}

class _PlotScreenViewState extends State<PlotScreenView> {
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
                          'Plots',
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
                  length: 2,
                  initialIndex: 1,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: AppColor.primaryColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.8,
                            height: MediaQuery.of(context).size.height / 12.5,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: AppColor.lightestGrey)),
                            child: Center(
                              child: Column(
                                children: [
                                  VerticalSpacing(height: 0.01),
                                  Image.asset(
                                    'assets/image/residental_logo.png',
                                    height: 30,
                                  ),
                                  VerticalSpacing(height: 0.001),
                                  Text(
                                    'Residential',
                                    style: TextStyle(
                                        color: AppColor.blackColor,
                                        fontSize: FontSize.s),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      // Divider(height: 2,thickness: 1,),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.8,
                            height: MediaQuery.of(context).size.height / 12.5,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: AppColor.lightestGrey)),
                            child: Center(
                              child: Column(
                                children: [
                                  VerticalSpacing(height: 00.01),
                                  Icon(
                                    Icons.apartment,
                                    size: 30,
                                    color: AppColor.darkGrey,
                                  ),
                                  VerticalSpacing(height: 0.001),
                                  Text(
                                    'Commercial',
                                    style: TextStyle(
                                        color: AppColor.blackColor,
                                        fontSize: FontSize.s),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height / 18,
                        color: AppColor.blackColor.withOpacity(0.4),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 270, top: 3),
                              child:
                              Text(
                                'Rs: 55 lac',
                                style: TextStyle(
                                    color: AppColor.whiteColor,
                                    fontSize: FontSize.l,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              VerticalSpacing(height: 0.03),
              Row(
                children: [

                  Text(
                    '     260 sq.yd plot for sale on \n'
                        '     Karachi Northern Bypass..',
                    style: TextStyle(fontSize: FontSize.m),
                  ),
                  HorizontalSpacing(width: 0.2),
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
                          icon: Icon(
                            Icons.phone,
                            color: AppColor.primaryColor,
                          ),
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

