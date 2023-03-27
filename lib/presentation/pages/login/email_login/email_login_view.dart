import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';

import 'controller_binding/email_login_controller.dart';

class EmailLoginView extends GetView<EmailLoginController> {
  const EmailLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.kWhite,
    ));
    return Material(
      color: AppPaintings.kWhite,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            SizedBox(
              height: 52.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      log("back button pressed");
                    },
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 15.w),
                        constraints: const BoxConstraints(),
                        child: Icon(
                          size: 18.h,
                          CupertinoIcons.back,
                          color: AppPaintings.themeLightBlack,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      log("Skip button pressed");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 15.w),
                      constraints: BoxConstraints(
                        maxHeight: 20.h,
                      ),
                      child: Text(
                        "SKIP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppPaintings.themeBlack),
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
                initialValue: "richard@gmail.com",
                type: FieldType.eMail,
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300.w,
              height: 57.5.h,
              child: const CustomFormField(
                type: FieldType.password,
                hintText: "Password",
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              width: 300.w,
              height: 42.h,
              child: LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "LOGIN",
                  onPressed: () {}),
            ),
            SizedBox(height: 21.5.h),
            Text.rich(
              TextSpan(
                text: 'Forgot Password?',
                style: TextStyle(
                  color: AppPaintings.themeGreenColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    log("clicked on forgot password");
                  },
              ),
            ),
            SizedBox(height: 28.h),
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
            SizedBox(height: 23.h),
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
            SizedBox(height: 43.h),
            Text.rich(
              TextSpan(
                text: 'Don’t have an account? ',
                children: [
                  TextSpan(
                    text: 'Sign Up ',
                    style: TextStyle(
                      color: AppPaintings.themeGreenColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        log("clicked on SignUp");
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
