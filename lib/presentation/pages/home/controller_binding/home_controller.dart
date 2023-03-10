import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  Widget get selectedPage => Container();
  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    } else {
      return;
    }
  }
}
