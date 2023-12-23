import 'dart:async';

import 'package:get/get.dart';
import 'package:help_harbor/utils/app_routes.dart';

class SplashScreenController extends GetxController {
  String displayText = '';
  int index = 0;
  final String _fullText = 'Help Harbor';

  @override
  void onInit() {
    super.onInit();
    _startTyping();
    _navigate();
  }

  void _navigate() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Get.offAllNamed(Routes.loginScreen);
      },
    );
  }

  void _startTyping() {
    const typingInterval = Duration(milliseconds: 200);

    Timer.periodic(typingInterval, (Timer timer) {
      if (index < _fullText.length) {
        displayText = _fullText.substring(0, index + 1);
        index++;
        update();
      } else {
        timer.cancel();
      }
    });
  }
}
