import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PDPcontroller extends GetxController {
  CarouselController carousalController = CarouselController();
  RxInt dotsIndex = 0.obs;
  RxInt itemQuantity = 1.obs;
  onForwardButtonClick() {
    carousalController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  onBackWardButtonClick() {
    carousalController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  dotsChanger(int index, int lenght) {
    if (index > -1 && index < lenght) {
      dotsIndex.value = index;
    } else {
      return;
    }
  }

  onAddButtonPress() {
    ++itemQuantity.value;
  }

  onAddSubstractButtonPress() {
    itemQuantity.value > 1 ? --itemQuantity.value : null;
  }
}
