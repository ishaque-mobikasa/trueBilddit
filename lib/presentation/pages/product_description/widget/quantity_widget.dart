import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget(
      {super.key,
      this.height,
      this.padding = EdgeInsets.zero,
      this.margin = EdgeInsets.zero,
      required this.quantity,
      this.onAddButtonPress,
      this.onSubstractButtonPress});
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final int quantity;
  final void Function()? onAddButtonPress;
  final void Function()? onSubstractButtonPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 67.h,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        border: Border.symmetric(
            horizontal: BorderSide(color: AppPaintings.pdpQuantityBorderColor)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text("Quantity:",
                style: AppPaintings.customSmallText.copyWith(
                    color: AppPaintings.themeBlack,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400)),
          ),
          Flexible(
            child: SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: RawMaterialButton(
                        shape: CircleBorder(
                            side: BorderSide(
                                color: AppPaintings.pdpButtonBorderColor)),
                        onPressed: onSubstractButtonPress,
                        child: Icon(
                          Icons.remove,
                          color: AppPaintings.kBlack,
                        )),
                  ),
                  Flexible(
                      child: Text(
                    quantity.toString(),
                    style: AppPaintings.customSmallText
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
                    maxLines: 1,
                  )),
                  SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: RawMaterialButton(
                        shape: CircleBorder(
                            side: BorderSide(
                                color: AppPaintings.pdpButtonBorderColor)),
                        onPressed: onAddButtonPress,
                        child: Icon(
                          Icons.add,
                          color: AppPaintings.kBlack,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
