import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                alignment: Alignment.bottomCenter,
                AssetStrings.changePassword,
                width: Get.width * 0.3,
                height: Get.height * 0.3,
              ),
              const CustomFormField(
                type: FieldType.password,
                hintText: "Current Password*",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const CustomFormField(
                type: FieldType.password,
                hintText: "New Password",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const CustomFormField(
                type: FieldType.password,
                hintText: "Confirm New Password",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const SizedBox(
                height: 20,
              ),
              LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "UPDATE",
                  onPressed: () {}),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.07,
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
