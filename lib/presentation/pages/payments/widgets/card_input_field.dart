import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/card_utils.dart';
import 'package:truebildit/data/enums.dart';

enum CardFileldType { cardNumber, expiryDate, cvv }

class CardInputField extends StatefulWidget {
  CardType? cardType;
  final String hintText;
  final TextStyle? hintStyle;
  final CardFileldType cardFieldType;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  CardInputField(
      {super.key,
      this.cardType = CardType.others,
      required this.hintText,
      this.hintStyle,
      this.contentPadding,
      required this.cardFieldType,
      this.controller});

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
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => widget.cardFieldType == CardFileldType.cardNumber
            ? CardUtils.validateCardNumWithLuhnAlgorithm(value!)
            : widget.cardFieldType == CardFileldType.expiryDate
                ? CardUtils.validateDate(value!)
                : CardUtils.validateCvv(value!),
        onChanged: (value) {
          setState(() {
            widget.cardType = CardUtils.getCardTypeFromNumber(value);
          });
        },
        inputFormatters: [
          widget.cardFieldType == CardFileldType.cardNumber
              ? LengthLimitingTextInputFormatter(19)
              : widget.cardFieldType == CardFileldType.expiryDate
                  ? LengthLimitingTextInputFormatter(5)
                  : LengthLimitingTextInputFormatter(3),
          FilteringTextInputFormatter.digitsOnly,
          widget.cardFieldType == CardFileldType.cardNumber
              ? BankCardNumberFormater()
              : widget.cardFieldType == CardFileldType.expiryDate
                  ? CreditCardExpirationDateFormatter()
                  : CreditCardCvcInputFormatter(),
        ],
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffECECEC)),
          ),
          contentPadding:
              widget.contentPadding ?? EdgeInsets.only(bottom: 10.h),
          hintStyle: widget.hintStyle ??
              TextStyle(
                color: AppPaintings.hintTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
          labelText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          errorStyle: TextStyle(color: AppPaintings.appRedColor, height: 0.0),
          suffix: widget.cardFieldType == CardFileldType.cardNumber
              ? SvgPicture.asset(
                  widget.cardType!.getCardName,
                  width: 18.w,
                  height: 18.h,
                )
              : null,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
