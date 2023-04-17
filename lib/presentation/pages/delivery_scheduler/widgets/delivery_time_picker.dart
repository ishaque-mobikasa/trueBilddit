import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

List<String> timeSlots = [
  "09-10",
  "10-11",
  "11-12",
  "12-13",
  "13-14",
  "14-15",
  "15-16",
  "16-17",
  "17-18",
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
                    children: List.generate(
                      4,
                      (index) => GestureDetector(
                        onTap: onTimeSlotClick != null
                            ? () => onTimeSlotClick!(index)
                            : null,
                        child: Container(
                          alignment: Alignment.center,
                          height: 32.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            color: selectedTimeSlot == index
                                ? AppPaintings.themeGreenColor
                                : AppPaintings.feedBackScreenBackgroundColor,
                          ),
                          child: Text(
                            timeSlots[index],
                            style: AppPaintings.customSmallText.copyWith(
                                color: selectedTimeSlot == index
                                    ? AppPaintings.kWhite
                                    : AppPaintings.hintTextColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => GestureDetector(
                      onTap: onTimeSlotClick != null
                          ? () => onTimeSlotClick!(index + 4)
                          : null,
                      child: Container(
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == index + 4
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          timeSlots[index + 4],
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == index + 4
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: onTimeSlotClick != null
                          ? () => onTimeSlotClick!(8)
                          : null,
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 8.w, top: 8.h, bottom: 11.h),
                        alignment: Alignment.center,
                        height: 32.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: selectedTimeSlot == 8
                              ? AppPaintings.themeGreenColor
                              : AppPaintings.feedBackScreenBackgroundColor,
                        ),
                        child: Text(
                          timeSlots[8],
                          style: AppPaintings.customSmallText.copyWith(
                              color: selectedTimeSlot == 8
                                  ? AppPaintings.kWhite
                                  : AppPaintings.hintTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ))
        : const SizedBox.shrink();
  }
}
