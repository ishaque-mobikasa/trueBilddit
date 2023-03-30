import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';

class ChangePasswordView extends GetView<ChangePasswordView> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 37.5),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 193.h,
              ),
              Image.asset(
                  alignment: Alignment.bottomCenter,
                  AssetStrings.changePassword,
                  width: 120.w,
                  height: 120.h),
              SizedBox(
                height: 49.h,
              ),
              CustomFormField(
                obscureText: true,
                type: FieldType.password,
                hintText: "Current Password*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
              ),
              CustomFormField(
                type: FieldType.password,
                hintText: "New Password",
                obscureText: true,
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
              ),
              CustomFormField(
                type: FieldType.password,
                obscureText: true,
                hintText: "Confirm New Password",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
              ),
              SizedBox(
                height: 25.5.h,
              ),
              SizedBox(
                width: 302.w,
                height: 42.h,
                child: LongButton(
                    buttonType: ButtonType.elevatedButton,
                    buttonText: "UPDATE",
                    onPressed: () {}),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 90.h,
          child: AppBar(
            elevation: 0,
            backgroundColor: AppPaintings.themeGreenColor,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.back)),
            title: const Text('Change Password'),
          ),
        ),
      ],
    );
  }
}
