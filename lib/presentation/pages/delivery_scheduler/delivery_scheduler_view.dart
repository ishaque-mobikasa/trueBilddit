import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/delivery_scheduler/controller_binding/delivery_scheduler_controller.dart';

import 'widgets/scheduler_card.dart';

class DeliverySchedulerView extends GetView<DeliverySchedulerController> {
  const DeliverySchedulerView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<DeliverySchedulerController>(
        () => DeliverySchedulerController());
    return Column(
      children: [
        CustomAppBar(
          onBackButtonPressed: () {
            log("back Button Pressed");
          },
          title: 'Schedule My Order',
        ),
        SizedBox(
          height: 20.h,
        ),
        Obx(
          () => SchedulerCard(
            onTimeSlotClick: (value) {
              log("value: $value");
              controller.onDeliveryTimeSlotClick(value);
            },
            onDateSlotClick: (value) =>
                controller.onDeliveryDateSlotClick(value),
            onRadioButtonClick: (value) {
              log("value: $value");
              controller.setDeliveryType(value == false
                  ? DeliveryScheduleType.normal
                  : DeliveryScheduleType.scheduled);
            },
            deliveryScheduleType: controller.deliveryScheduleType.value,
            selectedDateSlot: controller.selectedDateSlot.value,
            selectedTimeSlot: controller.selectedTimeSlot.value,
            padding: EdgeInsets.only(
              bottom: controller.deliveryScheduleType.value ==
                      DeliveryScheduleType.normal
                  ? 0
                  : 21.h,
            ),
            margin: EdgeInsets.symmetric(horizontal: 15.w),
          ),
        ),
        const Spacer(),
        Flexible(
          child: SizedBox(
              height: 42.h,
              width: 345.w,
              child: LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "PROCEED TO PAY - £369.00",
                  onPressed: () {
                    log("Proceed to pay");
                  })),
        ),
      ],
    );
  }
}
