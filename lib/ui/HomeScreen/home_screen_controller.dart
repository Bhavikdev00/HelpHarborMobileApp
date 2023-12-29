import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int selectedPoster = 0;

  void selectPoster({required int value}) {
    selectedPoster = value;
    update();
  }
}
