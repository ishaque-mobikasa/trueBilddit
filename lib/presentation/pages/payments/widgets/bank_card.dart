import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class BankCard extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool isSelected;
  const BankCard(
      {super.key, this.margin, this.padding, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: margin,
          padding: padding,
          height: 60.h,
          width: size.width,
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected
                  ? AppPaintings.themeGreenColor
                  : AppPaintings.appRedColor,
              width: 1.w,
            ),
            color: isSelected
                ? AppPaintings.shippingCardSelectedColor
                : AppPaintings.kWhite,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        isSelected
            ? Positioned(
                right: 59.w,
                top: 13.h,
                child: SizedBox(
                  height: 34.h,
                  width: 78.w,
                  child: TextFormField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(3),
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppPaintings.kWhite,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                              color: AppPaintings.loginButtonBorderColor),
                        ),
                        contentPadding: EdgeInsets.only(left: 9.w),
                        hintText: "CVV",
                        hintStyle: AppPaintings.customSmallText
                            .copyWith(color: AppPaintings.hintTextColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color: AppPaintings.loginButtonBorderColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1),
                          borderSide: BorderSide(
                            color: AppPaintings.loginButtonBorderColor,
                          ),
                        ),
                      )),
                ),
              )
            : const SizedBox.shrink(),
        isSelected
            ? Positioned(
                right: 26.w,
                top: 21.h,
                child: CircleAvatar(
                  backgroundColor: AppPaintings.themeGreenColor,
                  radius: 11.r,
                  child: CircleAvatar(
                    backgroundColor: AppPaintings.kWhite,
                    radius: 10.r,
                    child: Icon(
                      Icons.check,
                      size: 15.r,
                      color: AppPaintings.themeGreenColor,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
