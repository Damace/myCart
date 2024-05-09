// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/theme/theme_helper.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreen();
}

class _CartScreen extends State<CartScreen> {
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
                    "My Cart",
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
              child: GFButton(
                onPressed: () {},
                text: "primary",
                icon: Icon(Icons.share),
                shape: GFButtonShape.pills,
              ),
            ),
            // AnimatedButton(
            //   text: 'Info Dialog fixed width and square buttons',
            //   pressEvent: () {
            //     AwesomeDialog(
            //       context: context,
            //       dialogType: DialogType.INFO_REVERSED,
            //       borderSide: const BorderSide(
            //         color: Colors.green,
            //         width: 2,
            //       ),
            //       width: 280,
            //       buttonsBorderRadius: const BorderRadius.all(
            //         Radius.circular(2),
            //       ),
            //       dismissOnTouchOutside: true,
            //       dismissOnBackKeyPress: false,
            //       onDissmissCallback: (type) {
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           SnackBar(
            //             content: Text('Dismissed by $type'),
            //           ),
            //         );
            //       },
            //       headerAnimationLoop: false,
            //       animType: AnimType.BOTTOMSLIDE,
            //       title: 'INFO',
            //       desc: 'This Dialog can be dismissed touching outside',
            //       showCloseIcon: true,
            //       btnCancelOnPress: () {},
            //       btnOkOnPress: () {},
            //     ).show();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
