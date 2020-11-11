import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/core/service/navigation_service.dart';
import 'package:property/locator.dart';
import 'package:property/ui/shared/app_colors.dart';
import 'package:property/ui/shared/font_size.dart';
import 'package:property/widget/horizontal_spacing.dart';
import 'package:property/widget/vertical_spacing.dart';

class HomeScreenView extends StatefulWidget {
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  int i = 0;
  TabController _tabController;
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _logo(),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Select Property Type:',
                style: TextStyle(
                    color: AppColor.darkGrey.withOpacity(0.7),
                    fontSize: FontSize.l),
              ),
            ),
            VerticalSpacing(height: 0.01),
            _residentButton(),
            VerticalSpacing(height: 0.03),
            _gradient()
          ],
        ),
      ),
    );
  }

  _logo() {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/image/background_image.png',
                height: 320,
              ),
              Positioned(
                  top: 30,
                  right: 170,
                  child: Image.asset(
                    'assets/image/logo.png',
                    width: 100,
                  )),
              Positioned(
                  top: 100,
                  right: 135,
                  child: Text(
                    'We found you home!',
                    style: TextStyle(
                        color: AppColor.darkGrey,
                        fontSize: FontSize.xxl,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  bottom: 10,
                  left: 26,
                  child: Material(
                    elevation: 7,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: AppColor.blackColor,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6.2,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                        children: [
                          VerticalSpacing(height: 0.01),
                          DefaultTabController(
                              length: 2,
                              initialIndex: 1,
                              child: TabBar(
                                unselectedLabelColor: AppColor.darkGrey,
                                labelColor: AppColor.blackColor,
                                isScrollable: true,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorColor: AppColor.redColor,
                                labelPadding:
                                    EdgeInsets.only(right: 50, left: 50),
                                indicatorWeight: 3,
                                tabs: [
                                  Column(
                                    children: [
                                      Text(
                                        'For Sale',
                                        style: TextStyle(
                                            color: AppColor.blackColor,
                                            fontSize: FontSize.xxl,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'For Rent',
                                        style: TextStyle(
                                            color: AppColor.blackColor,
                                            fontSize: FontSize.xxl,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  )
                                ],
                              )),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 370,
                            color: AppColor.lightestGrey,
                          ),
                          VerticalSpacing(height: 0.02),
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: TextField(
                              cursorColor: AppColor.lightestGrey,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search here...',
                                hintStyle: TextStyle(
                                    fontSize: FontSize.xl,
                                    fontWeight: FontWeight.w400),
                                suffixIcon: Icon(Icons.search_outlined),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  _residentButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      color: AppColor.lightGrey,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.5,
              height: MediaQuery.of(context).size.height / 8,
              color: AppColor.whiteColor,
              child: FlatButton(
                onPressed: () {},
                child: Center(
                  child: Column(
                    children: [
                      VerticalSpacing(height: 0.02),
                      Image.asset(
                        'assets/image/residental_logo.png',
                        height: 40,
                      ),
                      Text(
                        'Residential',
                        style: TextStyle(color: AppColor.blackColor,
                        fontSize: FontSize.m,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 200,
              height: MediaQuery.of(context).size.height / 10,
              color: AppColor.lightestGrey,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.5,
              height: MediaQuery.of(context).size.height / 8,
              color: AppColor.whiteColor,
              child: FlatButton(
                onPressed: () {},
                child: Center(
                  child: Column(
                    children: [
                      VerticalSpacing(height: 0.02),
                      Image.asset(
                        'assets/image/commercial_logo.png',
                        height: 40,
                      ),
                      Text(
                        'Commercial',
                        style: TextStyle(color: AppColor.blackColor,
                            fontSize: FontSize.m,fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _gradient() {
    return Center(
      child: Material(
        elevation: 7,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: MediaQuery.of(context).size.height / 6.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.blackColor.withOpacity(0.5),
                    AppColor.blackColor.withOpacity(0.7)
                  ])),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Life with iLaan.com_____________________',
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: FontSize.xl,
                      fontWeight: FontWeight.w500),
                ),
                VerticalSpacing(height: 0.01),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'From home improvement ideas',
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: FontSize.l,
                              fontWeight: FontWeight.w400),
                        ),
                        VerticalSpacing(height: 0.01),
                        Text(
                          'to news, find it all here',
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: FontSize.l,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    HorizontalSpacing(width: 0.02),
                    FlatButton(
                        color: AppColor.redColor,
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'Explore',
                            style: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: FontSize.l,
                                fontWeight: FontWeight.w400),
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
