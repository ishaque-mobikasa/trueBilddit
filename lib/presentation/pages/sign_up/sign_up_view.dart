import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/circled_profile_image.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

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
                height: 36.h,
              ),
              SizedBox(
                width: 375.w,
                height: 52.h,
                child: Row(
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
                            CupertinoIcons.back,
                            color: AppPaintings.themeLightBlack,
                          )),
                    ),
                    SizedBox(
                      width: 115.w,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: AppPaintings.kBlack,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.montserrat().fontFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.h),
              Row(
                children: [
                  SizedBox(width: 134.w),
                  SizedBox(
                      height: 108.h,
                      width: 115.w,
                      child: Obx(
                        () => CircledProfileImage(
                          isCameraIconed: true,
                          image: controller.pickedImage.value,
                          backGroundCameraAvatarColor:
                              AppPaintings.themeGreenColor,
                          onTap: () => controller.onImagePickButtonClick(),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 22.h),
              SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    hintText: "Full Name*",
                    icon: Icons.ac_unit,
                    type: FieldType.normalInputField),
              ),
              SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    hintText: "Company Name (Optional)",
                    icon: Icons.ac_unit,
                    type: FieldType.normalInputField),
              ),
              SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    hintText: "Email*",
                    icon: Icons.ac_unit,
                    type: FieldType.eMail),
              ),
              SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    hintText: "Mobile Number*",
                    icon: Icons.ac_unit,
                    type: FieldType.phoneNumber),
              ),
              SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    hintText: "Password*",
                    icon: Icons.ac_unit,
                    obscureText: true,
                    type: FieldType.password),
              ),
              SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    hintText: "Confirm Password*",
                    icon: Icons.ac_unit,
                    obscureText: true,
                    type: FieldType.password),
              ),
              SizedBox(
                height: 22.5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 38.w,
                  ),
                  Obx(() => SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: Checkbox(
                          value: controller.isPrivacyAccepted.value,
                          onChanged: (value) =>
                              controller.onPrivacyToggler(value!),
                        ),
                      )),
                  SizedBox(
                    width: 9.w,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "I accept  ",
                      style: TextStyle(
                          color: AppPaintings.kBlack,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoogleFonts.montserrat().fontFamily),
                      children: [
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppPaintings.themeGreenColor,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: "Terms of Use",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppPaintings.themeGreenColor,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              SizedBox(
                height: 42.h,
                width: 300.w,
                child: LongButton(
                    buttonType: ButtonType.elevatedButton,
                    buttonText: "SIGN UP",
                    onPressed: () {}),
              ),
              SizedBox(
                height: 26.h,
              ),
              Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: AppPaintings.customSmallText.copyWith(
                    color: AppPaintings.themeBlack,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: AppPaintings.customSmallText.copyWith(
                        color: AppPaintings.themeGreenColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // handle sign in tap
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ));
  }
}
