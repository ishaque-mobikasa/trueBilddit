import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/circled_profile_image.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/profile/controllers_bindings/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              SizedBox(
                height: Get.height.h,
                child: Column(
                  children: [
                    CustomAppBar(title: "My Profile", height: 130.h),
                    SizedBox(height: 78.h),
                    const CustomFormField(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        initialValue: "Richard George",
                        hintText: "Full Name",
                        type: FieldType.normalInputField),
                    const CustomFormField(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        initialValue: "ABC Company",
                        hintText: "Company Name (Optional)",
                        type: FieldType.normalInputField),
                    const CustomFormField(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        initialValue: "richard.george@gmail.com",
                        hintText: "Email",
                        type: FieldType.normalInputField),
                    const CustomFormField(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 26.5),
                        initialValue: "+44 7911 123456",
                        hintText: "Mobile Number",
                        type: FieldType.normalInputField),
                    SizedBox(
                      height: 42.h,
                      width: 300.w,
                      child: LongButton(
                        buttonType: ButtonType.elevatedButton,
                        buttonText: "EDIT",
                        onPressed: () => log("Edit Button Pressed"),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 70.h,
                left: Get.width * 0.35.w,
                child: GestureDetector(
                  onTap: controller.onImagePickButtonClick,
                  child: Stack(
                    children: [
                      Obx(
                        () => CircledProfileImage(
                          isCameraIconed: true,
                          backGroundCameraAvatarColor: AppPaintings.kWhite,
                          image: controller.pickedImage.value,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
