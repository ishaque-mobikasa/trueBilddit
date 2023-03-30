import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/forgot_password/controllers_binding/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.kWhite,
    ));
    return Scaffold(
      backgroundColor: AppPaintings.kWhite,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 34.h),
              height: 51.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      log("back button pressed");
                    },
                    child: Container(
                        width: 15.w,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 15.w),
                        constraints: const BoxConstraints(),
                        child: Icon(
                          size: 24.h,
                          CupertinoIcons.back,
                          color: AppPaintings.themeLightBlack,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            Image.asset(
              AssetStrings.forgotPasswordImage,
              height: 120.h,
              width: 120.w,
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 211.w,
              height: 22.h,
              child: Text(
                textAlign: TextAlign.center,
                AppStrings.forgotPassword,
                style: AppPaintings.customLargeText,
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              alignment: Alignment.center,
              width: 300.w,
              height: 38.h,
              child: Text(
                AppStrings.getPasswordLink,
                style: AppPaintings.customSmallText,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            SizedBox(
              width: 300.w,
              child: const CustomFormField(
                type: FieldType.eMail,
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 21.5.h,
            ),
            SizedBox(
              height: 42.h,
              width: 300.w,
              child: LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "REQUEST RESET LINK",
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
