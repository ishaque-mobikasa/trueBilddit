import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/data/models/card_model.dart';

class BankCardTile extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool isSelected;
  final BankCardModel bankCard;
  final String cardNumber;

  final void Function(BankCardModel bankCard)? onTap;
  final AutovalidateMode? autovalidateMode;
  const BankCardTile(
      {super.key,
      this.margin,
      this.autovalidateMode = AutovalidateMode.always,
      this.padding,
      required this.isSelected,
      required this.cardNumber,
      this.onTap,
      required this.bankCard});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap != null ? () => onTap!(bankCard) : null,
      child: Stack(
        children: [
          Container(
              margin: margin,
              padding: padding,
              height: 60.h,
              width: size.width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(31, 31, 31, 0.04),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: Offset(0, 0),
                  ),
                ],
                border: Border.all(
                  color: isSelected
                      ? AppPaintings.themeGreenColor
                      : AppPaintings.kWhite,
                  width: 1.w,
                ),
                color: isSelected
                    ? AppPaintings.shippingCardSelectedColor
                    : AppPaintings.kWhite,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14.w, right: 13.w),
                    child: SvgPicture.asset(
                     bankCard.cardType.getCardName,
                      width: 32.5.w,
                    ),
                  ),
                  Text("**** **** ****  ${cardNumber.substring(12)}",
                      style: AppPaintings.customSmallText.copyWith(
                          color: AppPaintings.themeBlack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400))
                ],
              )),
          isSelected
              ? Positioned(
                  right: 59.w,
                  top: 13.h,
                  child: SizedBox(
                    height: 34.h,
                    width: 78.w,
                    child: TextFormField(
                        validator: (value) =>
                            value!.length == 3 || value.isEmpty ? null : "",
                        autovalidateMode: autovalidateMode,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(3),
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide:
                                BorderSide(color: AppPaintings.appRedColor),
                          ),
                          errorStyle: const TextStyle(
                            height: 0,
                          ),
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
      ),
    );
  }
}
