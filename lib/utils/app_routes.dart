import 'package:get/get.dart';
import 'package:help_harbor/ui/Authentication/login_screen.dart';
import 'package:help_harbor/ui/Authentication/sign_up_screen.dart';
import 'package:help_harbor/ui/Authentication/user_detail_screen.dart';
import 'package:help_harbor/ui/SplashScreen/splash_screen.dart';

class Routes {
  static String splashScreen = "/";
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";
  static String userDetailScreen = "/userDetailScreen";

  static final getPages = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: userDetailScreen, page: () => const UserDetailScreen()),
  ];
}
