import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:help_harbor/constant/app_color.dart';
import 'package:help_harbor/ui/BottomNevBar/bottom_nev_bar_controller.dart';
import 'package:help_harbor/ui/HomeScreen/home_screen.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:sizer/sizer.dart';

class BottomNevBar extends StatefulWidget {
  const BottomNevBar({super.key});

  @override
  State<BottomNevBar> createState() => _BottomNevBarState();
}

class _BottomNevBarState extends State<BottomNevBar> {
  BottomNevBarController bottomNevBarController =
      Get.put(BottomNevBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNevBarController>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: ResponsiveNavigationBar(
            selectedIndex: controller.selectedIndex,
            backgroundColor: whiteColor,
            activeIconColor: darkBlue,
            inactiveButtonsFlexFactor: 150,
            showActiveButtonText: true,
            inactiveIconColor: greyColor,
            fontSize: 25,
            textStyle: const TextStyle(
              color: darkBlue,
              fontWeight: FontWeight.normal,
            ),
            backgroundOpacity: 0.4,
            navigationBarButtons: const [
              NavigationBarButton(
                  icon: Icons.home, backgroundColor: lightPurple),
              NavigationBarButton(
                  icon: Icons.task, backgroundColor: lightPurple),
              NavigationBarButton(
                  icon: Icons.favorite_border, backgroundColor: lightPurple),
              NavigationBarButton(
                  icon: Icons.person, backgroundColor: lightPurple),
            ],
            onTabChange: controller.changeTab,
          ),
          body: const HomeScreen(),
        );
      },
    );
  }
}
