import 'package:get/get.dart';
import 'package:help_harbor/ui/Authentication/login_screen.dart';
import 'package:help_harbor/ui/Authentication/sign_up_screen.dart';
import 'package:help_harbor/ui/Authentication/user_detail_screen.dart';
import 'package:help_harbor/ui/BottomNevBar/bottom_nev_bar.dart';
import 'package:help_harbor/ui/HomeScreen/home_screen.dart';
import 'package:help_harbor/ui/SplashScreen/splash_screen.dart';

class Routes {
  static String splashScreen = "/";
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";
  static String userDetailScreen = "/userDetailScreen";
  static String homeScreen = "/homeScreen";
  static String bottomNevBar = "/bottomNevBar";

  static final getPages = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: userDetailScreen, page: () => const UserDetailScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: bottomNevBar, page: () => const BottomNevBar()),
  ];
}
