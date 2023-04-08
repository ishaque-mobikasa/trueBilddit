import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class AddSubstractButton extends StatelessWidget {
  final int count;
  final void Function()? onSubstractButtonClick;
  final void Function()? onAddButtonClick;
  final Color borderColor;
  const AddSubstractButton(
      {super.key,
      this.borderColor = Colors.black,
      required this.count,
      this.onSubstractButtonClick,
      this.onAddButtonClick});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74.w,
      height: 23.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: InkWell(
                onTap: onSubstractButtonClick,
                child: Container(
                    alignment: Alignment.center,
                    decoration:
                        BoxDecoration(border: Border.all(color: borderColor)),
                    child: Icon(
                      Icons.remove,
                      color: AppPaintings.themeBlack,
                      size: 20.sp,
                    ))),
          ),
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              width: 35.w,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(color: borderColor))),
              child: Text(
                count.toString(),
                style: AppPaintings.customSmallText.copyWith(
                  color: AppPaintings.themeBlack,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: InkWell(
                onTap: onAddButtonClick,
                child: Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints(minWidth: 20.w),
                    decoration:
                        BoxDecoration(border: Border.all(color: borderColor)),
                    child: Icon(
                      Icons.add,
                      size: 20.sp,
                      color: AppPaintings.themeBlack,
                    ))),
          ),
        ],
      ),
    );
  }
}
