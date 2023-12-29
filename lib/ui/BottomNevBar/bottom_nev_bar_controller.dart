import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNevBarController extends GetxController {
  int selectedIndex = 0;

  void changeTab(int index) {
    selectedIndex = index;
    update();
  }
}
