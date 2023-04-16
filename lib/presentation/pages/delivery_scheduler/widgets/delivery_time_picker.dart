import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

List<String> timeSlots = [


];

class DeliveryTimePicker extends StatelessWidget {
  final bool isShown;
  final int? selectedTimeSlot;
  final void Function(int value)? onTimeSlotClick;
  const DeliveryTimePicker({
    super.key,
    this.isShown = false,
    this.selectedTimeSlot = 0,
    this.onTimeSlotClick,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return isShown
        ? Container(
            margin: EdgeInsets.only(right: 16.w),
            decoration: BoxDecoration(
                border: Border.all(
              color: AppPaintings.dimWhite,
              width: 1,
            )),
            width: size.width,
            child: ExpansionTile(
              tilePadding: EdgeInsets.only(left: 8.w),
              title: Text(
                "Delivery Time",
                textAlign: TextAlign.left,
                style: AppPaintings.customSmallText
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(
                      color: AppPaintings.dimWhite,
                      width: 1,
                    ),
                  )),
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 0
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "09-10",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 0
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 1
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "10-11",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 1
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 2
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "11-12",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 2
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 3
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "12-13",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 3
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 4
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "13-14",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 4
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 5
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "14-15",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 5
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 6
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "15-16",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 6
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 7
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          "16-17",
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 7
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: 8.w, top: 8.h, bottom: 11.h),
                      alignment: Alignment.center,
                      height: 32.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: AppPaintings.feedBackScreenBackgroundColor,
                      ),
                      child: Text(
                        "17-18",
                        style: AppPaintings.customSmallText.copyWith(
                            color: selectedTimeSlot == 8
                                ? AppPaintings.kWhite
                                : AppPaintings.hintTextColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            )
            )
        : const SizedBox.shrink();
  }
}
