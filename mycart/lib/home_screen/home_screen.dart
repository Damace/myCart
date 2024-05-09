// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:marquee/marquee.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/theme/theme_helper.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final formkey = GlobalKey<FormState>();
  late String childClothers = "";
  late String womenClothers = "";
  late String menClothers = "";
  late String fashion = "";

  BoxDecoration childrenBox = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: Colors.black));

  BoxDecoration womenBox = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: Colors.black));

  BoxDecoration menBox = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: Colors.black));

  BoxDecoration fashionBox = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(color: Colors.black));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(top: 10.v, right: 2.h, left: 2.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.sort,
                    size: 32.fSize,
                  ),
                  Container(
                    height: 40.v,
                    width: 280.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: appTheme.defaultcolor),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 5.h,
                        ),
                        Icon(
                          Icons.search_outlined,
                          size: 16.fSize,
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        Text(
                          "Search ...",
                          style: TextStyle(fontSize: 16.fSize),
                        )
                      ],
                    ),
                  ),
                  Badge(
                    label: Text("0"),
                    backgroundColor: appTheme.defaultcolor,
                    child: Container(
                      height: 38.v,
                      width: 38.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: appTheme.defaultcolor, width: 3)),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 25.fSize,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              tabSection(context)
            ],
          ),
        ),
      ),
    );
  }

  tabSection(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Column(
        children: [
          Container(
            child: TabBar(
              padding: EdgeInsets.all(2),
              indicatorColor: appTheme.defaultcolor,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: appTheme.defaultcolor,
              labelStyle:
                  TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  //icon: Icon(Icons.sell_rounded),
                  text: "All",
                ),
                Tab(
                  //icon: Icon(Icons.newspaper),
                  text: "Clothes",
                ),
                Tab(
                  // icon: Icon(Icons.person),
                  text: "Mobile phone",
                ),
                Tab(
                  // icon: Icon(Icons.newspaper),
                  text: "Computers",
                ),
                Tab(
                  //icon: Icon(Icons.newspaper),
                  text: "Stationeries",
                ),
                Tab(
                  //icon: Icon(Icons.newspaper),
                  text: "Sports",
                ),
                Tab(
                  // icon: Icon(Icons.newspaper),
                  text: "Others",
                ),
              ],
            ),
          ),
          Container(
            height: 650.v,
            child: TabBarView(
              children: [
                allProduct(context),
                clothes(context),
                mobile(context),
                computers(context),
                stationary(context),
                sports(context),
                others(context)
              ],
            ),
          )
        ],
      ),
    );
  }

////******************************************************** TAB FUNCTIONS ********************************************************* */
  allProduct(context) {
    return Container(
      color: const Color.fromARGB(255, 233, 227, 227),
      height: double.infinity,
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150.v,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0.v),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/wireless headset.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "Head phone",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/shoes2.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "Men Shoes",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeOutDownBig(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/tshirt.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "T-shirts",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/router.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "Routers",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/glap.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "Glops",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/ps4_console_blue_1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "PS4",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            BounceInDown(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/Image Popular Product 2.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "Shorts",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/glap.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "data",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h),
                            FadeInLeft(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 60.h,
                                      height: 60.v,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/glap.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                    Text(
                                      "data",
                                      style: TextStyle(fontSize: 11.5.fSize),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5.h)
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 350.h,
                            height: 50.v,
                            decoration: BoxDecoration(
                                color: appTheme.defaultcolor.withOpacity(0.5),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8))),
                            child: BounceInDown(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.tiktok),
                                      Container(
                                        width: 200.h,
                                        height: 20.v,
                                        child: Marquee(
                                          text:
                                              'Join now as a Members and get all!',
                                          style: TextStyle(fontSize: 13.fSize),
                                          scrollAxis: Axis.vertical,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          blankSpace: 20.0,
                                          velocity: 20.0,
                                          pauseAfterRound: Duration(seconds: 5),
                                          startPadding: 25.0,
                                          accelerationDuration:
                                              Duration(seconds: 1),
                                          accelerationCurve:
                                              Curves.linearToEaseOut,
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
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150.v,
                    child: Center(
                        child: Image(
                      image: AssetImage(
                          "assets/images/Image Popular Product 1.png"),
                      fit: BoxFit.cover,
                    )),
                  ),
                  Positioned(
                    top: null,
                    left: null,
                    right: 25.0.h,
                    bottom: 5.0.v,
                    child: Container(
                      width: 130,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        border: Border.all(width: 1.0, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Center(
                        child: Text(
                          "Tsh 100,000.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.fSize),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10.v,
              ),

              ElasticInRight(
                child: Container(
                  height: 240.v,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 10.v, right: 4.h, left: 4.h, bottom: 10.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Most Sales Electronics",
                                style: TextStyle(
                                    fontSize: 16.fSize,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("More",
                                  style: TextStyle(
                                      fontSize: 16.fSize,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
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
                                              "assets/images/desk.jpeg"),
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
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
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
                                              "assets/images/desk2.jpeg"),
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
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
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
                                              "assets/images/mobile.jpeg"),
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
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
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
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
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
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
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
                                              color:
                                                  Colors.black.withOpacity(0.6),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
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
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.v, right: 4.h, left: 4.h, bottom: 10.v),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 72, 196, 10),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.track_changes),
                              Text(
                                " All Computers free Delivery Within Dodoma Region",
                                style: TextStyle(
                                    fontSize: 12.fSize,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              BounceInRight(
                child: Container(
                  child: ElasticIn(
                    child: Image(
                      image: AssetImage("assets/images/b1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //************************************* STAGERED GRIDVIEW *********************** */

              Container(
                color: Colors.white,
                child: SizedBox(
                  child: StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2, // Number of columns
                    itemCount: 8, // Total number of items
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black.withOpacity(0.03),
                        // color: Colors.red,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: ElasticIn(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/mobile2.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h, right: 5.h, top: 4.v),
                                          child: Column(
                                            children: [
                                              Text(
                                                "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                                style: TextStyle(
                                                    fontSize: 14.fSize,
                                                    fontWeight:
                                                        FontWeight.normal),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.black,
                                                        size: 12,
                                                      ),
                                                      Text(
                                                        "( 4/5 )",
                                                        style: TextStyle(
                                                            fontSize: 12.fSize),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    "200k+ Sold",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize,
                                                        color: Colors.green),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  Text(
                                                    "(102 Orders)",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize,
                                                        color: Colors.black
                                                            .withOpacity(0.5)),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Tsh 120,000",
                                                    style: TextStyle(
                                                        fontSize: 18.fSize,
                                                        color: appTheme
                                                            .defaultcolor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  Container(
                                                    width: 32.h,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    80))),
                                                    child: Icon(
                                                      Icons
                                                          .shopping_cart_outlined,
                                                      size: 15,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Tsh 180,000",
                                                    style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.grey,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )))
                              ],
                            ),
                            Positioned(
                              top: 00,
                              left: 00,
                              right: null,
                              bottom: null,
                              child: Container(
                                width: 50.h,
                                //  height: 30.h,
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.9),
                                  border: Border.all(
                                      width: 1.0,
                                      color: Colors.red.withOpacity(0.9)),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                ),
                                child: Center(
                                  child: Text(
                                    "50%  OFF",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.fSize),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    staggeredTileBuilder: (int index) {
                      return StaggeredTile.count(
                          1, index.isEven ? 1.5 : 1); // Item height varies
                    },
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                ),
              ),

              Container(
                height: 240.v,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10.v, right: 4.h, left: 4.h, bottom: 10.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "children's Corner",
                              style: TextStyle(
                                  fontSize: 16.fSize,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("More",
                                style: TextStyle(
                                    fontSize: 16.fSize,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
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
                                            "assets/images/stationary.jpeg"),
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
                                            color:
                                                Colors.black.withOpacity(0.6),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
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
                                          "Stationary",
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
                                            color:
                                                Colors.black.withOpacity(0.6),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
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
                                          "Play Station 5",
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
                                            "assets/images/bed.jpeg"),
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
                                            color:
                                                Colors.black.withOpacity(0.6),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
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
                                            color:
                                                Colors.black.withOpacity(0.6),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
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
                                            color:
                                                Colors.black.withOpacity(0.6),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
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
                          //  SizedBox(width: 5.h),
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
                                            color:
                                                Colors.black.withOpacity(0.6),
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
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.grey)),
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

              Container(
                child: Image(
                  image: AssetImage("assets/images/b1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                color: Colors.white,
                child: SizedBox(
                  child: StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2, // Number of columns
                    itemCount: 50, // Total number of items
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black.withOpacity(0.03),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/women.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h, right: 5.h, top: 4.v),
                                          child: Column(
                                            children: [
                                              Text(
                                                "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                                style: TextStyle(
                                                    fontSize: 14.fSize,
                                                    fontWeight:
                                                        FontWeight.normal),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.black,
                                                        size: 12,
                                                      ),
                                                      Text(
                                                        "( 4/5 )",
                                                        style: TextStyle(
                                                            fontSize: 12.fSize),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    "200k+ Sold",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize,
                                                        color: Colors.green),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  Text(
                                                    "(102 Orders)",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize,
                                                        color: Colors.black
                                                            .withOpacity(0.5)),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Tsh 120,000",
                                                    style: TextStyle(
                                                        fontSize: 18.fSize,
                                                        color: appTheme
                                                            .defaultcolor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  Container(
                                                    width: 32.h,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    80))),
                                                    child: Icon(
                                                      Icons
                                                          .shopping_cart_outlined,
                                                      size: 15,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Tsh 180,000",
                                                    style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.grey,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )))
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    staggeredTileBuilder: (int index) {
                      return StaggeredTile.count(
                          1, index.isEven ? 1.5 : 1); // Item height varies
                    },
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  clothes(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 90.v,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.v),
              child: Column(
                children: [
                  // nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    childClothers = "selected";
                                    womenClothers = "Not_selected";
                                    menClothers = "Not_selected";
                                    fashion = "Not_selected";

                                    childrenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: appTheme.defaultcolor,
                                            width: 3));

                                    womenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    menBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    fashionBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));
                                  });
                                },
                                child: Container(
                                    width: 60.h,
                                    height: 60.v,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/glap.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    decoration: childrenBox),
                              ),
                              Text(
                                "Children",
                                style: TextStyle(fontSize: 14.fSize),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    womenClothers = "selected";
                                    childClothers = "Not_selected";
                                    menClothers = "Not_selected";
                                    fashion = "Not_selected";

                                    womenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: appTheme.defaultcolor,
                                            width: 3));
                                    childrenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    menBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    fashionBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));
                                  });
                                },
                                child: Container(
                                    width: 60.h,
                                    height: 60.v,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/glap.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    decoration: womenBox),
                              ),
                              Text(
                                "Women",
                                style: TextStyle(fontSize: 14.fSize),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    menClothers = "selected";
                                    womenClothers = "Not_selected";
                                    childClothers = "Not_selected";
                                    fashion = "Not_selected";

                                    menBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: appTheme.defaultcolor,
                                            width: 3));

                                    childrenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    womenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    fashionBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));
                                  });
                                },
                                child: Container(
                                    width: 60.h,
                                    height: 60.v,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/glap.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    decoration: menBox),
                              ),
                              Text(
                                "Men",
                                style: TextStyle(fontSize: 14.fSize),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    menClothers = "Not_selected";
                                    womenClothers = "Not_selected";
                                    childClothers = "Not_selected";
                                    fashion = "selected";

                                    fashionBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: appTheme.defaultcolor,
                                            width: 3));

                                    childrenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    womenBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));

                                    menBox = BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border:
                                            Border.all(color: Colors.black));
                                  });
                                },
                                child: Container(
                                    width: 60.h,
                                    height: 60.v,
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/glap.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    decoration: fashionBox),
                              ),
                              Text(
                                "Fashion",
                                style: TextStyle(fontSize: 14.fSize),
                              )
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
          if (childClothers == "selected") ...[
            Padding(
              padding: EdgeInsets.only(
                  top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 196, 10),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.track_changes),
                    Text(
                      " Children from 0 to 17 age ",
                      style: TextStyle(
                          fontSize: 12.fSize,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Number of columns
                  itemCount: 50, // Total number of items
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.black.withOpacity(0.03),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Image(
                                  image: AssetImage("assets/images/child.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, right: 5.h, top: 4.v),
                                        child: Column(
                                          children: [
                                            Text(
                                              "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.black,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "( 4/5 )",
                                                      style: TextStyle(
                                                          fontSize: 12.fSize),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "200k+ Sold",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.green),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "(102 Orders)",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.black
                                                          .withOpacity(0.5)),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 120,000",
                                                  style: TextStyle(
                                                      fontSize: 18.fSize,
                                                      color:
                                                          appTheme.defaultcolor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Container(
                                                  width: 32.h,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  80))),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 180,000",
                                                  style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.grey,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.count(
                        1, index.isEven ? 1.5 : 1); // Item height varies
                  },
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ),
          ] else if (womenClothers == "selected") ...[
            Padding(
              padding: EdgeInsets.only(
                  top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 196, 10),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.track_changes),
                    Text(
                      "All Ladies Clothers, Shoes, etc",
                      style: TextStyle(
                          fontSize: 12.fSize,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Number of columns
                  itemCount: 50, // Total number of items
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.black.withOpacity(0.03),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Image(
                                  image: AssetImage("assets/images/women.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, right: 5.h, top: 4.v),
                                        child: Column(
                                          children: [
                                            Text(
                                              "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.black,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "( 4/5 )",
                                                      style: TextStyle(
                                                          fontSize: 12.fSize),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "200k+ Sold",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.green),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "(102 Orders)",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.black
                                                          .withOpacity(0.5)),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 120,000",
                                                  style: TextStyle(
                                                      fontSize: 18.fSize,
                                                      color:
                                                          appTheme.defaultcolor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Container(
                                                  width: 32.h,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  80))),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 180,000",
                                                  style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.grey,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.count(
                        1, index.isEven ? 1.5 : 1); // Item height varies
                  },
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ),
          ] else if (menClothers == "selected") ...[
            Padding(
              padding: EdgeInsets.only(
                  top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 196, 10),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.track_changes),
                    Text(
                      "All Men Clothers, Shoes, etc",
                      style: TextStyle(
                          fontSize: 12.fSize,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Number of columns
                  itemCount: 50, // Total number of items
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.black.withOpacity(0.03),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Image(
                                  image: AssetImage("assets/images/men3.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, right: 5.h, top: 4.v),
                                        child: Column(
                                          children: [
                                            Text(
                                              "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.black,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "( 4/5 )",
                                                      style: TextStyle(
                                                          fontSize: 12.fSize),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "200k+ Sold",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.green),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "(102 Orders)",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.black
                                                          .withOpacity(0.5)),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 120,000",
                                                  style: TextStyle(
                                                      fontSize: 18.fSize,
                                                      color:
                                                          appTheme.defaultcolor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Container(
                                                  width: 32.h,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  80))),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 180,000",
                                                  style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.grey,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.count(
                        1, index.isEven ? 1.5 : 1); // Item height varies
                  },
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ),
          ] else if (fashion == "selected") ...[
            Padding(
              padding: EdgeInsets.only(
                  top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 196, 10),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.track_changes),
                    Text(
                      "New Fashion in Town",
                      style: TextStyle(
                          fontSize: 12.fSize,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Number of columns
                  itemCount: 50, // Total number of items
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.black.withOpacity(0.03),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Image(
                                  image: AssetImage("assets/images/women.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, right: 5.h, top: 4.v),
                                        child: Column(
                                          children: [
                                            Text(
                                              "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.black,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "( 4/5 )",
                                                      style: TextStyle(
                                                          fontSize: 12.fSize),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "200k+ Sold",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.green),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "(102 Orders)",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.black
                                                          .withOpacity(0.5)),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 120,000",
                                                  style: TextStyle(
                                                      fontSize: 18.fSize,
                                                      color:
                                                          appTheme.defaultcolor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Container(
                                                  width: 32.h,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  80))),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 180,000",
                                                  style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.grey,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.count(
                        1, index.isEven ? 1.5 : 1); // Item height varies
                  },
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ),
          ] else ...[
            Padding(
              padding: EdgeInsets.only(
                  top: 00.v, right: 4.h, left: 4.h, bottom: 00.v),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 72, 196, 10),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.track_changes),
                    Text(
                      " Children from 0 to 17 age ",
                      style: TextStyle(
                          fontSize: 12.fSize,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2, // Number of columns
                  itemCount: 50, // Total number of items
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.black.withOpacity(0.03),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 6,
                                child: ElasticIn(
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/fqicm_512.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 5.h, right: 5.h, top: 4.v),
                                        child: Column(
                                          children: [
                                            Text(
                                              "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                              style: TextStyle(
                                                  fontSize: 14.fSize,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.black,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "( 4/5 )",
                                                      style: TextStyle(
                                                          fontSize: 12.fSize),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "200k+ Sold",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.green),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "(102 Orders)",
                                                  style: TextStyle(
                                                      fontSize: 12.fSize,
                                                      color: Colors.black
                                                          .withOpacity(0.5)),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 120,000",
                                                  style: TextStyle(
                                                      fontSize: 18.fSize,
                                                      color:
                                                          appTheme.defaultcolor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Container(
                                                  width: 32.h,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  80))),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    size: 15,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Tsh 180,000",
                                                  style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.grey,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.count(
                        1, index.isEven ? 1.5 : 1); // Item height varies
                  },
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  mobile(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                          color: Color.fromARGB(255, 72, 196, 10),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.track_changes),
                          Text(
                            " All Computers free Delivery Within Dodoma Region",
                            style: TextStyle(
                                fontSize: 12.fSize,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
          Container(
            color: Colors.white,
            child: SizedBox(
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2, // Number of columns
                itemCount: 50, // Total number of items
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.black.withOpacity(0.03),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Image(
                                image: AssetImage("assets/images/mobile.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.h, right: 5.h, top: 4.v),
                                      child: Column(
                                        children: [
                                          Text(
                                            "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                            style: TextStyle(
                                                fontSize: 14.fSize,
                                                fontWeight: FontWeight.normal),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "( 4/5 )",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "200k+ Sold",
                                                style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.green),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "(102 Orders)",
                                                style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.black
                                                        .withOpacity(0.5)),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tsh 120,000",
                                                style: TextStyle(
                                                    fontSize: 18.fSize,
                                                    color:
                                                        appTheme.defaultcolor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Container(
                                                width: 32.h,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                80))),
                                                child: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tsh 180,000",
                                                style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  color: Colors.grey,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )))
                          ],
                        ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(
                      1, index.isEven ? 1.5 : 1); // Item height varies
                },
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  computers(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                          color: Color.fromARGB(255, 72, 196, 10),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.track_changes),
                          Text(
                            " All Computers free Delivery Within Dodoma Region",
                            style: TextStyle(
                                fontSize: 12.fSize,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          "assets/images/mobile2.jpeg"),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
          Container(
            color: Colors.white,
            child: SizedBox(
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2, // Number of columns
                itemCount: 50, // Total number of items
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.black.withOpacity(0.03),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Image(
                                image: AssetImage("assets/images/desk2.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.h, right: 5.h, top: 4.v),
                                      child: Column(
                                        children: [
                                          Text(
                                            "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                            style: TextStyle(
                                                fontSize: 14.fSize,
                                                fontWeight: FontWeight.normal),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "( 4/5 )",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "200k+ Sold",
                                                style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.green),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "(102 Orders)",
                                                style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.black
                                                        .withOpacity(0.5)),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tsh 120,000",
                                                style: TextStyle(
                                                    fontSize: 18.fSize,
                                                    color:
                                                        appTheme.defaultcolor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Container(
                                                width: 32.h,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                80))),
                                                child: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tsh 180,000",
                                                style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  color: Colors.grey,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )))
                          ],
                        ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(
                      1, index.isEven ? 1.5 : 1); // Item height varies
                },
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  stationary(context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: SizedBox(
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2, // Number of columns
            itemCount: 50, // Total number of items
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.black.withOpacity(0.03),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image(
                            image: AssetImage("assets/images/stationary.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, right: 5.h, top: 4.v),
                                  child: Column(
                                    children: [
                                      Text(
                                        "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                        style: TextStyle(
                                            fontSize: 14.fSize,
                                            fontWeight: FontWeight.normal),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.black,
                                                size: 12,
                                              ),
                                              Text(
                                                "( 4/5 )",
                                                style: TextStyle(
                                                    fontSize: 12.fSize),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "200k+ Sold",
                                            style: TextStyle(
                                                fontSize: 12.fSize,
                                                color: Colors.green),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "(102 Orders)",
                                            style: TextStyle(
                                                fontSize: 12.fSize,
                                                color: Colors.black
                                                    .withOpacity(0.5)),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Tsh 120,000",
                                            style: TextStyle(
                                                fontSize: 18.fSize,
                                                color: appTheme.defaultcolor,
                                                fontWeight: FontWeight.bold),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Container(
                                            width: 32.h,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(80))),
                                            child: Icon(
                                              Icons.shopping_cart_outlined,
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Tsh 180,000",
                                            style: TextStyle(
                                              fontSize: 12.fSize,
                                              color: Colors.grey,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )))
                      ],
                    ),
                  ],
                ),
              );
            },
            staggeredTileBuilder: (int index) {
              return StaggeredTile.count(
                  1, index.isEven ? 1.5 : 1); // Item height varies
            },
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      ),
    );
  }

  sports(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                          color: Color.fromARGB(255, 72, 196, 10),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.track_changes),
                          Text(
                            " All Computers free Delivery Within Dodoma Region",
                            style: TextStyle(
                                fontSize: 12.fSize,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          "assets/images/mobile2.jpeg"),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                            borderRadius: BorderRadius.all(Radius.circular(8)),
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
                                          color: Colors.black.withOpacity(0.6),
                                          border: Border.all(
                                              width: 1.0, color: Colors.white),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Tsh 100",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.fSize,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Center(
                                        child: Icon(
                                          Icons.food_bank,
                                          size: 25.fSize,
                                        ),
                                      )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
          Container(
            color: Colors.white,
            child: SizedBox(
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2, // Number of columns
                itemCount: 50, // Total number of items
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.black.withOpacity(0.03),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 6,
                              child: Image(
                                image: AssetImage("assets/images/desk2.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                                flex: 4,
                                child: Container(
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.h, right: 5.h, top: 4.v),
                                      child: Column(
                                        children: [
                                          Text(
                                            "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                            style: TextStyle(
                                                fontSize: 14.fSize,
                                                fontWeight: FontWeight.normal),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "( 4/5 )",
                                                    style: TextStyle(
                                                        fontSize: 12.fSize),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "200k+ Sold",
                                                style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.green),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                "(102 Orders)",
                                                style: TextStyle(
                                                    fontSize: 12.fSize,
                                                    color: Colors.black
                                                        .withOpacity(0.5)),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tsh 120,000",
                                                style: TextStyle(
                                                    fontSize: 18.fSize,
                                                    color:
                                                        appTheme.defaultcolor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Container(
                                                width: 32.h,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                80))),
                                                child: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tsh 180,000",
                                                style: TextStyle(
                                                  fontSize: 12.fSize,
                                                  color: Colors.grey,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )))
                          ],
                        ),
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(
                      1, index.isEven ? 1.5 : 1); // Item height varies
                },
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  others(context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: SizedBox(
          child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2, // Number of columns
            itemCount: 50, // Total number of items
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.black.withOpacity(0.03),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Image(
                            image: AssetImage("assets/images/bed.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                            flex: 4,
                            child: Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.h, right: 5.h, top: 4.v),
                                  child: Column(
                                    children: [
                                      Text(
                                        "data hjkldjhfjhfhf hfhljff fgjfklj fgjfgjkl gfgtt",
                                        style: TextStyle(
                                            fontSize: 14.fSize,
                                            fontWeight: FontWeight.normal),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.black,
                                                size: 12,
                                              ),
                                              Text(
                                                "( 4/5 )",
                                                style: TextStyle(
                                                    fontSize: 12.fSize),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "200k+ Sold",
                                            style: TextStyle(
                                                fontSize: 12.fSize,
                                                color: Colors.green),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            "(102 Orders)",
                                            style: TextStyle(
                                                fontSize: 12.fSize,
                                                color: Colors.black
                                                    .withOpacity(0.5)),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Tsh 120,000",
                                            style: TextStyle(
                                                fontSize: 18.fSize,
                                                color: appTheme.defaultcolor,
                                                fontWeight: FontWeight.bold),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Container(
                                            width: 32.h,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(80))),
                                            child: Icon(
                                              Icons.shopping_cart_outlined,
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Tsh 180,000",
                                            style: TextStyle(
                                              fontSize: 12.fSize,
                                              color: Colors.grey,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )))
                      ],
                    ),
                  ],
                ),
              );
            },
            staggeredTileBuilder: (int index) {
              return StaggeredTile.count(
                  1, index.isEven ? 1.5 : 1); // Item height varies
            },
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      ),
    );
  }

// *********************************************** Other fx *********************
}
