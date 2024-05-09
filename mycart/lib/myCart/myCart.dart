import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mycart/cart/cartscreen.dart';
import 'package:mycart/category/category.dart';
import 'package:mycart/core/utils/size_utils.dart';
import 'package:mycart/home_screen/home_screen.dart';
import 'package:mycart/myCart/mycart_controller.dart';
import 'package:mycart/notification/notification_screen.dart';
import 'package:mycart/profile/profile.dart';
import 'package:mycart/theme/theme_helper.dart';

class Home extends StatelessWidget {
  buildBottomNavigationMenu(context, mycart_controller) {
    return Obx(() => BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: mycart_controller.changeTabIndex,
          currentIndex: mycart_controller.tabIndex.value,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          selectedItemColor: appTheme.defaultcolor,
          selectedFontSize: 12.fSize,
          unselectedFontSize: 12.fSize,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 2.v),
                child: Icon(
                  Icons.home_outlined,
                  size: 23.0.fSize,
                ),
              ),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 2.v),
                child: Icon(
                  Icons.category_outlined,
                  size: 23.0.fSize,
                ),
              ),
              label: 'Category',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 2.v),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 23.0.fSize,
                ),
              ),
              label: 'My Cart',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 2.v),
                child: Icon(
                  Icons.notifications_active_outlined,
                  size: 23.0.fSize,
                ),
              ),
              label: 'Notification',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 2.v),
                child: Icon(
                  Icons.person_2_outlined,
                  size: 23.0.fSize,
                ),
              ),
              label: 'Me',
              backgroundColor: Colors.white,
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final MycartController mycart_controller =
        Get.put(MycartController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, mycart_controller),
      body: Obx(() => IndexedStack(
            index: mycart_controller.tabIndex.value,
            children: [
              HomeScreen(),
              CategoryScreen(),
              CartScreen(),
              NotificationScreen(),
              ProfileScreen(),
            ],
          )),
    ));
  }
}
