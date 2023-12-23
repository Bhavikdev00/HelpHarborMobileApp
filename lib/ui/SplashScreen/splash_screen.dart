import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/ui/SplashScreen/splash_screen_controller.dart';
import 'package:help_harbor/utils/extension.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SizedBox(
        width: 100.w,
        height: 100.h,
        child: GetBuilder<SplashScreenController>(
          builder: (controller) {
            return Center(
              child: splashScreenController.displayText
                  .boldReadex(fontSize: 38.sp, fontColor: Colors.white),
            );
          },
        ),
      ),
    );
  }
}
