import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/presentation/pages/delivery_scheduler/widgets/delivery_time_picker.dart';

import 'delivery_date_picker.dart';

class SchedulerCard extends StatelessWidget {
  const SchedulerCard(
      {super.key,
      this.margin,
      this.padding,
      this.selectedDateSlot,
      this.selectedTimeSlot,
      this.onRadioButtonClick,
      this.deliveryScheduleType = DeliveryScheduleType.normal,
      this.onDateSlotClick, this.onTimeSlotClick});
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final void Function(int value)? onDateSlotClick;
  final void Function(int value)? onTimeSlotClick;
  final int? selectedDateSlot;
  final int? selectedTimeSlot;
  final DeliveryScheduleType? deliveryScheduleType;
  final void Function(bool value)? onRadioButtonClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(31, 31, 31, 0.04),
              blurRadius: 20,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
          color: AppPaintings.kWhite),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(10.r),
            ),
            child: Container(
              height: 69.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppPaintings.dimWhite,
                    width: 1,
                  ),
                ),
                color: AppPaintings.kWhite,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 23.sp,
                    width: 23.sp,
                    child: Radio<bool>(
                      activeColor: AppPaintings.themeGreenColor,
                      fillColor: MaterialStateProperty.all(
                        deliveryScheduleType == DeliveryScheduleType.normal
                            ? AppPaintings.themeGreenColor
                            : const Color(0xffE0E0E0),
                      ),
                      value:
                          deliveryScheduleType == DeliveryScheduleType.normal,
                      groupValue: true,
                      onChanged: (value) => onRadioButtonClick!(value!),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    child: Text('Immediate Delivery',
                        style: AppPaintings.customSmallText.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 22.h),
            child: Row(
              children: [
                SizedBox(
                  height: 23.sp,
                  width: 23.sp,
                  child: Radio<bool>(
                    fillColor: MaterialStateProperty.all(
                      deliveryScheduleType == DeliveryScheduleType.scheduled
                          ? AppPaintings.themeGreenColor
                          : const Color(0xffE0E0E0),
                    ),
                    value:
                        deliveryScheduleType == DeliveryScheduleType.scheduled,
                    groupValue: true,
                    onChanged: (value) => onRadioButtonClick!(!value!),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Flexible(
                  child: Text('Scheduled Delivery',
                      style: AppPaintings.customSmallText.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 49.w,
            ),
            child: DeliveryDatePicker(
              onDateSlotClick: onDateSlotClick,
              isShown: deliveryScheduleType == DeliveryScheduleType.scheduled,
              selectedDateSlot: selectedDateSlot,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 49.w,
            ),
            child: DeliveryTimePicker(
              onTimeSlotClick: onTimeSlotClick,
              selectedTimeSlot: selectedTimeSlot,
              isShown: deliveryScheduleType == DeliveryScheduleType.scheduled,
            ),
          )
        ],
      ),
    );
  }
}
