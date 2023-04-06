import 'dart:developer';

import 'package:get/get.dart';

class PDPcontroller extends GetxController {
  RxInt dotsIndex = 0.obs;
  dotsChanger(int index) {
    if (index > -1 && index < 5) {
      dotsIndex.value = index;
      log(index.toString());
      log("message");
    } else {
      return;
    }
  }
}
