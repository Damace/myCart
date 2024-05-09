// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/theme/theme_helper.dart';
import 'package:tab_container/tab_container.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreen();
}

class _CategoryScreen extends State<CategoryScreen> {
  final formkey = GlobalKey<FormState>();

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
              Padding(
                padding: EdgeInsets.only(top: 8.v),
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
                                color: Color.fromARGB(255, 72, 196, 10),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.track_changes),
                                Text(
                                  " Most Sells Category",
                                  style: TextStyle(
                                      fontSize: 12.fSize,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
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
              categorytabs(context)
            ],
          ),
        ),
      ),
    );
  }

  categorytabs(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 685.v,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 10.v),
        child: TabContainer(
          tabEdge: TabEdge.left,
          tabsStart: 0.0,
          tabsEnd: 0.9,
          tabMaxLength: 100,
          borderRadius: BorderRadius.circular(8),
          tabBorderRadius: BorderRadius.circular(8),
          childPadding: const EdgeInsets.all(10.0),
          selectedTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          unselectedTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 11.0,
          ),
          colors: [
            Colors.black.withOpacity(0.03),
            Colors.black.withOpacity(0.03),
            Colors.black.withOpacity(0.03),
            Colors.black.withOpacity(0.03),
            Colors.black.withOpacity(0.03),
          ],
          tabs: [
            Container(
              child: Container(
                width: 50.h,
                height: 50.v,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/glap.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
              ),
            ),
            Container(
              child: Container(
                width: 50.h,
                height: 50.v,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/glap.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
              ),
            ),
            Container(
              child: Container(
                width: 50.h,
                height: 50.v,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/glap.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
              ),
            ),
            Container(
              child: Container(
                width: 50.h,
                height: 50.v,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/glap.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
              ),
            ),
            Container(
              child: Container(
                width: 50.h,
                height: 50.v,
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/glap.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black)),
              ),
            ),
          ],
          children: [
            tabOne(),
            Container(
              child: Text('Child 2'),
            ),
            Container(
              child: Text('Child 3'),
            ),
            Container(
              child: Text('Child 4'),
            ),
            Container(
              child: Text('Child 5'),
            ),
          ],
        ),
      ),
    );
  }

  tabOne() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Colors.transparent,
          child: SizedBox(
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3, // Number of columns
              itemCount: 4, // Total number of items
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    InkWell(
                      // onTap: () {
                      //   Get.to(LocationEmptyScreen(),
                      //       arguments: {
                      //         "category": "Agri-inputs"
                      //       },
                      //       duration: Duration(seconds: 1),
                      //       transition: Transition
                      //           .fadeIn //transition effect
                      //       );
                      // },
                      child: Card(
                          // color: ColorConstant.default_color,
                          shadowColor: Colors.black.withOpacity(0.03),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(15),
                                topStart: Radius.circular(15),
                                bottomEnd: Radius.circular(15),
                                bottomStart: Radius.circular(15),
                              ),

                              // --------------------------------------------------------------------------------------------------------------------------

                              side: BorderSide(color: appTheme.defaultcolor)),
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.18,
                            width: MediaQuery.of(context).size.width * 0.18,
                            child: Center(
                              child: Image(
                                image: AssetImage("assets/images/mobile.jpeg"),
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 0.v),
                          child: Text(
                            "Agri-inputs",
                            style: TextStyle(fontSize: 12.fSize),
                          ),
                        )
                      ],
                    )
                  ],
                );
              },
              staggeredTileBuilder: (int index) {
                return StaggeredTile.count(
                    1, index.isEven ? 1 : 1); // Item height varies
              },
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
