// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_loader_type.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/theme/theme_helper.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.defaultcolor0,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: BounceInDown(
                      child: Image(
                        image: AssetImage("assets/images/myCart logo.png"),
                        fit: BoxFit.contain,
                        width: 80.h,
                        height: 100.v,
                      ),
                    ),
                  ),
                  BounceInUp(
                    child: GFLoader(
                        size: GFSize.SMALL,
                        loaderstrokeWidth: 2,
                        type: GFLoaderType.ios),
                  ),
                ],
              ),
            )));
  }
}
