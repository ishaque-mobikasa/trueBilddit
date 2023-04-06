import 'package:get/get.dart';

import 'pdp_controller.dart';

class PDPbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PDPcontroller());
  }
}
