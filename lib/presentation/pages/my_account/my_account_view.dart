import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/circled_profile_image.dart';
import 'package:truebildit/presentation/pages/my_account/controllers_binding/my_account_controller.dart';

class MyAccountView extends GetView<MyAccountController> {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Image.asset(
            AssetStrings.bildItLogo,
            width: Get.width * 0.3,
            height: Get.height * 0.03,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ))
          ],
          centerTitle: true,
          backgroundColor: AppPaintings.themeGreenColor,
          elevation: 0,
        ),
        Container(
          height: Get.height * 0.25,
          decoration: BoxDecoration(color: AppPaintings.themeGreenColor),
          child: Column(
            children: const [
              CircledProfileImage(
                isCameraIconed: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
