// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:marquee/marquee.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/theme/theme_helper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    color: appTheme.defaultcolor,
                    width: double.infinity,
                    height: 250.v,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 8.v, right: 20.h, left: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              Container(
                                height: 30.v,
                                width: 35.v,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.edit_outlined,
                                  size: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.h, left: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100.v,
                                width: 100.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.person_2_outlined,
                                  size: 32,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.h, left: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 25.v,
                                width: 150.h,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    border: Border.all(color: Colors.white)),
                                child: Text(
                                  "Alex Mwakalikamo",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14.fSize,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: null,
                  left: 30.0.h,
                  right: 30.0.h,
                  bottom: 00.0.v,
                  child: Container(
                    height: 70.v,
                    width: 300.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: BounceInDown(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.tiktok),
                              Container(
                                width: 200.h,
                                height: 20.v,
                                child: Marquee(
                                  text: 'Join now as a Members and get all!',
                                  style: TextStyle(fontSize: 13.fSize),
                                  scrollAxis: Axis.vertical,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  blankSpace: 20.0,
                                  velocity: 20.0,
                                  pauseAfterRound: Duration(seconds: 5),
                                  startPadding: 25.0,
                                  accelerationDuration: Duration(seconds: 1),
                                  accelerationCurve: Curves.linearToEaseOut,
                                  decelerationDuration:
                                      Duration(milliseconds: 1000),
                                  decelerationCurve: Curves.easeIn,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 25.v,
                            width: 60.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: appTheme.defaultcolor, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Center(
                              child: Text(
                                "Join now",
                                style: TextStyle(fontSize: 12.fSize),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.h,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            tabSection(context)
          ],
        ),
      ),
    );
  }

  tabSection(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h, right: 5.h),
            child: Container(
              child: TabBar(
                indicatorColor: appTheme.defaultcolor,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: appTheme.defaultcolor,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.person_2_outlined, size: 25),
                    text: "Details",
                  ),
                  Tab(
                    icon: Icon(Icons.list_outlined, size: 25),
                    text: "Transaction",
                  ),
                  Tab(
                    icon: Icon(Icons.mail, size: 25),
                    text: "Massage",
                  ),
                  Tab(
                    icon: Icon(Icons.headset_mic_outlined, size: 25),
                    text: "Help",
                  ),
                  Tab(
                    icon: Icon(Icons.settings, size: 25),
                    text: "Preference",
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 400.v,
            child: TabBarView(
              children: [
                details(context),
                transaction(context),
                sms(context),
                help(context),
                setting(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  details(context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "Personal details",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "Bank Account ",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "About myCart",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "Business License",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.airport_shuttle_rounded,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.v,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              BounceInDown(
                child: Container(
                  height: 200.v,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.track_changes),
                                Text(
                                  " New Product Recommended for you",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16.fSize,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.v,
                        ),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 200.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  transaction(context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "My Orders",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.h, right: 10.0.h),
                  child: Container(
                    height: 30.v,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person_2,
                              size: 25.fSize,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "Transaction history",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16.fSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
              SizedBox(
                height: 10.v,
              ),
              BounceInDown(
                child: Container(
                  height: 200.v,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.track_changes),
                                Text(
                                  " Recommended Orders for you",
                                  style: TextStyle(
                                      fontSize: 16.fSize,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.v,
                        ),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 200.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Container(
                                height: 100.v,
                                width: 120.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.05)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100.v,
                                      width: 120.h,
                                      child: Stack(
                                        children: [
                                          Center(
                                              child: Image(
                                            image: AssetImage(
                                                "assets/images/Image Popular Product 1.png"),
                                            fit: BoxFit.cover,
                                          )),
                                          Positioned(
                                            top: null,
                                            left: null,
                                            right: 35.0.h,
                                            bottom: 5.0.v,
                                            child: Container(
                                              height: 28.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: Colors.white),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(100)),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Tsh 100",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.fSize,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                            child: Center(
                                              child: Icon(
                                                Icons.food_bank,
                                                size: 25.fSize,
                                              ),
                                            )),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "HP Pavilions",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10k+ Sold",
                                              style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sms(context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Empty ")],
          ),
        ),
      ),
    );
  }

  help(context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Help ")],
          ),
        ),
      ),
    );
  }

  setting(context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Setting")],
          ),
        ),
      ),
    );
  }
}
