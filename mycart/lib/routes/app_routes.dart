import 'package:get/get.dart';
import 'package:mycart/category/category.dart';
import 'package:mycart/myCart/myCart.dart';
import 'package:mycart/notification/notification_screen.dart';
import 'package:mycart/profile/profile.dart';
import 'package:mycart/splash_screen/binding/splash_binding.dart';
import 'package:mycart/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String initialRoute = '/initialRoute';
  static const String mycart = '/home';
  static const String category = '/category';
  static const String notification = '/notification';
  static const String profile = '/profile';

  static List<GetPage> pages = [
    GetPage(
      name: notification,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: notification,
      page: () => NotificationScreen(),
    ),
    GetPage(
      name: category,
      page: () => CategoryScreen(),
    ),
    GetPage(
      name: mycart,
      page: () => Home(),
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
