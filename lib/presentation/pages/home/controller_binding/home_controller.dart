import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;

  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    } else {
      return;
    }
  }
}
