import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/profilew/controllers_bindings/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: SizedBox(
                height: Get.height * 0.9,
                child: Column(
                  children: [
                    AppBar(
                      toolbarHeight: Get.height * 0.09,
                      title: const Text("My Profile"),
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.back,
                            color: AppPaintings.kWhite,
                          )),
                      centerTitle: true,
                      backgroundColor: AppPaintings.themeGreenColor,
                      elevation: 0,
                    ),
                    Container(
                      color: AppPaintings.themeGreenColor,
                      height: Get.height * 0.08,
                    ),
                    SizedBox(
                      height: Get.height * 0.08,
                    ),
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
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        initialValue: "+44 7911 123456",
                        hintText: "Mobile Number",
                        type: FieldType.normalInputField),
                    LongButton(
                      buttonType: ButtonType.elevatedButton,
                      buttonText: "EDIT",
                      onPressed: () => log("Edit Button Pressed"),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.09,
              left: Get.width * 0.35,
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                constraints: BoxConstraints(maxHeight: Get.height * 0.2),
                child: GestureDetector(
                  onTap: controller.onImagePickButtonClick,
                  child: Stack(
                    children: [
                      Obx(
                        () => CircleAvatar(
                          radius: 52,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              radius: 50,
                              backgroundImage: MemoryImage(const Base64Decoder()
                                  .convert(controller.pickedImage.value))),
                        ),
                      ),
                      Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 21.5,
                            backgroundColor: AppPaintings.kWhite,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage(AssetStrings.cameraImage),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
