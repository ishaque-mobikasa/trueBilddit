import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/login/otp_login/controller_binding/otp_login_controller.dart';

class OTPLoginView extends GetView<OTPLoginController> {
  const OTPLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.kWhite,
    ));
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            SizedBox(
              height: 51.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      log("Skip button pressed");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 15.w),
                      height: 20.h,
                      child: Text(
                        "SKIP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp, color: AppPaintings.themeBlack),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              child: Image.asset(
                AssetStrings.bildItLogoGreen,
                width: 150.h,
                height: 38.3.w,
              ),
            ),
            SizedBox(
              height: 68.7.h,
            ),
            SizedBox(
              width: 158.w,
              height: 30.h,
              child: Text(
                "Welcome!",
                textAlign: TextAlign.center,
                style: AppPaintings.customLargeText
                    .copyWith(fontSize: 30.sp, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              width: 139.w,
              height: 22.h,
              child: Text(
                textAlign: TextAlign.center,
                "Sign in to continue",
                style: AppPaintings.customSmallText
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            SizedBox(
              width: 300.w,
              height: 57.5.h,
              child: const CustomFormField(
                initialValue: "+44 7911 123456",
                type: FieldType.phoneNumber,
                hintText: "Mobile Number",
              ),
            ),
            SizedBox(
              height: 19.5.h,
            ),
            SizedBox(
              width: 300.w,
              height: 42.h,
              child: LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "RECIEVE A CODE",
                  onPressed: () {}),
            ),
            SizedBox(height: 25.h),
            SizedBox(
                width: 120.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: AppPaintings.dimWhite,
                      width: 36.5.w,
                      height: 1.5.h,
                    ),
                    SizedBox(
                        width: 47.w,
                        height: 14.h,
                        child: Text(
                          "OR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: AppPaintings.themeLightBlack),
                        )),
                    Container(
                      color: AppPaintings.dimWhite,
                      width: 36.5.w,
                      height: 1.5.h,
                    ),
                  ],
                )),
            SizedBox(height: 21.h),
            SizedBox(
              width: 300.w,
              height: 42.h,
              child: LongButton(
                  isSocialButton: true,
                  outlinedButtonBorderColor:
                      AppPaintings.loginButtonBorderColor,
                  buttonType: ButtonType.outLinedButton,
                  buttonText: "  Sign In With Email",
                  iconImage: AssetStrings.emailIcon,
                  buttonTextStyle: TextStyle(color: AppPaintings.themeBlack),
                  onPressed: () {}),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: 300.w,
              height: 42.h,
              child: LongButton(
                  isSocialButton: true,
                  outlinedButtonBorderColor:
                      AppPaintings.loginButtonBorderColor,
                  buttonType: ButtonType.outLinedButton,
                  buttonText: "Sign In With Google",
                  iconImage: AssetStrings.googleIcon,
                  buttonTextStyle: TextStyle(color: AppPaintings.themeBlack),
                  onPressed: () {}),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: 300.w,
              height: 42.h,
              child: LongButton(
                  isSocialButton: true,
                  outlinedButtonBorderColor:
                      AppPaintings.loginButtonBorderColor,
                  buttonType: ButtonType.outLinedButton,
                  buttonText: "Sign In With Facebook",
                  iconImage: AssetStrings.facebookIcon,
                  buttonTextStyle: TextStyle(color: AppPaintings.themeBlack),
                  onPressed: () {}),
            ),
            SizedBox(height: 29.h),
            SizedBox(
              height: 18.h,
              child: Text.rich(
                TextSpan(
                  text: 'Don’t have an account? ',
                  children: [
                    TextSpan(
                      text: 'Sign Up ',
                      style: TextStyle(
                        color: AppPaintings.themeGreenColor,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 140.h),
          ],
        ),
      ),
    );
  }
}
