import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/card_utils.dart';
import 'package:truebildit/data/enums.dart';

class CardInputField extends StatefulWidget {
  CardType? cardType;
  final String hintText;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  CardInputField(
      {super.key,
      this.cardType = CardType.others,
      required this.hintText,
      this.hintStyle,
      this.contentPadding});

  @override
  State<CardInputField> createState() => _CardInputFieldState();
}

class _CardInputFieldState extends State<CardInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 50.h,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => value!.length == 19 || value.isEmpty ? null : "",
        onChanged: (value) {
          setState(() {
            widget.cardType = CardUtils.getCardTypeFromNumber(value);
            log(widget.cardType.toString());
          });
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(19),
          FilteringTextInputFormatter.digitsOnly,
          BankCardNumberFormater()
        ],
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: AppPaintings.themeGreenColor,
          ),
          contentPadding:
              widget.contentPadding ?? EdgeInsets.only(bottom: 10.h),
          hintStyle: widget.hintStyle,
          labelText: widget.hintText,
          errorStyle: TextStyle(color: AppPaintings.appRedColor, height: 0.0),
          suffix: SvgPicture.asset(
            widget.cardType!.getCardName,
            width: 18.w,
            height: 18.h,
          ),
          border: const UnderlineInputBorder(),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
