import 'package:get/get.dart';

import 'my_list_controller.dart';

class MyListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyListController());
  }
}