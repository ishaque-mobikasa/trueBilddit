import 'package:get/get.dart';

import 'delivery_scheduler_controller.dart';

class DeliverySchedulerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliverySchedulerController>(
      () => DeliverySchedulerController(),
    );
  }
}