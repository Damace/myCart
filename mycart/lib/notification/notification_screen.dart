import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/theme/theme_helper.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreen();
}

class _NotificationScreen extends State<NotificationScreen> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.fSize),
                  ),
                ],
              ),
            ),
            Divider(
              color: appTheme.defaultcolor,
              thickness: 2,
            ),
            Center(
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
