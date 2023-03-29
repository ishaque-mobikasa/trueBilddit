import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/login/otp_login/otp_verification/controller_binding/otp_verification_controller.dart';

class OTPverificationView extends GetView<OTPverificationController> {
  const OTPverificationView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.kWhite,
    ));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppPaintings.kWhite,
          elevation: 0,
          toolbarHeight: 54.h,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.back),
            color: AppPaintings.themeLightBlack,
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: Get.width.w,
                margin: EdgeInsets.only(top: 5.h),
                child: Image.asset(
                  AssetStrings.bildItLogoGreen,
                  width: 150.h,
                  height: 38.3.w,
                ),
              ),
              SizedBox(
                height: 84.h,
              ),
              Image.asset(
                AssetStrings.inputOtp,
                height: 120.h,
                width: 120.w,
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                  width: 144.w,
                  height: 22.h,
                  child: Text(
                    "OTP Verfication",
                    style: AppPaintings.customLargeText
                        .copyWith(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 9.h,
              ),
              SizedBox(
                height: 19.h,
                child: Text(
                  "Enter the OTP send to +44 7911 123456",
                  style: AppPaintings.customSmallText,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Pinput(
                focusedPinTheme: PinTheme(
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  width: 67.w,
                  height: 35.h,
                  textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff8F8F8F),
                      fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                        bottom:
                            BorderSide(color: AppPaintings.themeGreenColor)),
                  ),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                ],
                defaultPinTheme: PinTheme(
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  width: 67.w,
                  height: 35.h,
                  textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff8F8F8F),
                      fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(color: AppPaintings.dimWhite)),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              SizedBox(
                height: 19.h,
                child: Text(
                  "Resend code in 30 seconds",
                  style: AppPaintings.customSmallText,
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              SizedBox(
                width: 300.w,
                height: 42.h,
                child: LongButton(
                    buttonType: ButtonType.elevatedButton,
                    buttonText: "VERIFY",
                    onPressed: () {}),
              ),
              SizedBox(
                height: 22.h,
              ),
              RichText(
                text: TextSpan(
                  text: "Resend OTP",
                  style: AppPaintings.textSpanStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppPaintings.themeGreenColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      log("Resending OTP");
                    },
                ),
              ),
            ],
          ),
        ));
  }
}
