import 'package:get/get.dart';
import 'package:truebildit/data/enums.dart';

class DeliverySchedulerController extends GetxController {
  Rx<DeliveryScheduleType> deliveryScheduleType =
      DeliveryScheduleType.normal.obs;

  RxInt selectedDateSlot = 0.obs;
  RxInt selectedTimeSlot = 0.obs;

  void setDeliveryType(DeliveryScheduleType type) {
    deliveryScheduleType.value = type;
  }

  onDeliveryDateSlotClick(int value) {
    value != selectedDateSlot.value ? selectedDateSlot.value = value : null;
  }
}
