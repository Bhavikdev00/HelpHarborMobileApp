import 'package:get/get.dart';
import 'package:help_harbor/ui/Authentication/login_screen.dart';
import 'package:help_harbor/ui/SplashScreen/splash_screen.dart';

class Routes {
  static String splashScreen = "/";
  static String loginScreen = "/loginScreen";

  static final getPages = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
  ];
}
