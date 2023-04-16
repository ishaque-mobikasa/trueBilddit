import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class DeliveryDatePicker extends StatelessWidget {
  final bool isShown;
  final int? selectedDateSlot;
  final void Function(int value)? onDateSlotClick;

  const DeliveryDatePicker({
    super.key,
    this.isShown = false,
    this.selectedDateSlot = 0,
    this.onDateSlotClick,
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
                "Delivery Date",
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
                      GestureDetector(
                        onTap: onDateSlotClick != null
                            ? () => onDateSlotClick!(0)
                            : null,
                        child: Container(
                          alignment: Alignment.center,
                          height: 32.h,
                          width: 83.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            color: selectedDateSlot == 0
                                ? AppPaintings.themeGreenColor
                                : AppPaintings.feedBackScreenBackgroundColor,
                          ),
                          child: Text(
                            "Tomorrow",
                            style: AppPaintings.customSmallText.copyWith(
                                color: selectedDateSlot == 0
                                    ? AppPaintings.kWhite
                                    : AppPaintings.hintTextColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onDateSlotClick != null
                            ? () => onDateSlotClick!(1)
                            : null,
                        child: Container(
                          alignment: Alignment.center,
                          height: 32.h,
                          width: 83.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            color: selectedDateSlot == 1
                                ? AppPaintings.themeGreenColor
                                : AppPaintings.feedBackScreenBackgroundColor,
                          ),
                          child: Text(
                            DateFormat('dd/MM/yyyy')
                                .format(
                                    DateTime.now().add(const Duration(days: 2)))
                                .toString(),
                            style: AppPaintings.customSmallText.copyWith(
                                color: selectedDateSlot == 1
                                    ? AppPaintings.kWhite
                                    : AppPaintings.hintTextColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: onDateSlotClick != null
                            ? () => onDateSlotClick!(2)
                            : null,
                        child: Container(
                          alignment: Alignment.center,
                          height: 32.h,
                          width: 83.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            color: selectedDateSlot == 2
                                ? AppPaintings.themeGreenColor
                                : AppPaintings.feedBackScreenBackgroundColor,
                          ),
                          child: Text(
                            DateFormat('dd/MM/yyyy')
                                .format(
                                    DateTime.now().add(const Duration(days: 3)))
                                .toString(),
                            style: AppPaintings.customSmallText.copyWith(
                                color: selectedDateSlot == 2
                                    ? AppPaintings.kWhite
                                    : AppPaintings.hintTextColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ))
        : const SizedBox.shrink();
  }
}
