
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mycart/home_screen/home_screen.dart';
import 'package:mycart/theme/theme_helper.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class OtpScreen extends StatefulWidget {

  State<OtpScreen> createState() => _OtpScreen();
}

class _OtpScreen extends State<OtpScreen> {
  final formkey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  String? dropDownValue;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: appTheme.defaultcolor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));

    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 8,
          title: const Text(
            "OTP Registration",
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: appTheme.defaultcolor,
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 15, left: 15),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verify your\n Phone number",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "We send you an One Time Password (OPT)\n on this number",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Enter Phone number",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: appTheme.defaultcolor,
                        )),
                    hintText: '+255762700405',
                    //  labelText: 'first named',
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    errorStyle: TextStyle(fontSize: 18.0),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(9.0))),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: appTheme.defaultcolor,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 53.v),
                const Spacer(flex: 3),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appTheme.defaultcolor,
                      //shape: const StadiumBorder(),
                      elevation: 8,
                      // shadowColor: myColor,
                      minimumSize: const Size.fromHeight(60),
                    ),
                    onPressed: () {
                      //  Navigator.pushNamed(context, SignInScreen.routeName);

                      Get.to(HomeScreen()
                          // SignInScreen()
                          // duration: Duration(seconds: 1),
                          // transition: Transition.rightToLeft //transition effect
                          );
                    },
                    child: const Text("Get OTP"),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
