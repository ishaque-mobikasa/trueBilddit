import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class SelectableButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String buttonText;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool? isSelected;
  const SelectableButton(
      {super.key,
      this.height,
      this.width,
      this.margin,
      this.padding,
      required this.buttonText,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      
        alignment: Alignment.center,
        padding: padding,
        margin: margin,
        width: width,
        height: height ?? 32.h,
        decoration: isSelected!
            ? BoxDecoration(
                color: AppPaintings.themeGreenColor,
                borderRadius: BorderRadius.all(Radius.circular(3.r)))
            : BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3.r)),
                color: AppPaintings.feedBackScreenBackgroundColor,
              ),
        child: Text(buttonText,
            style: isSelected!
                ? AppPaintings.customSmallText.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 12.sp)
                : AppPaintings.customSmallText.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppPaintings.hintTextColor,
                    fontSize: 12.sp)));
  }
}
