import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/circled_profile_image.dart';
import 'package:truebildit/presentation/pages/my_account/controllers_binding/my_account_controller.dart';
import 'package:truebildit/presentation/pages/my_account/widgets/list_of_my_account.dart';
import 'package:truebildit/presentation/pages/my_account/widgets/my_account_item.dart';

class MyAccountView extends GetView<MyAccountController> {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
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
            constraints: BoxConstraints(
                maxHeight: Get.height * 0.25, minWidth: Get.width),
            decoration: BoxDecoration(color: AppPaintings.themeGreenColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircledProfileImage(
                  isCameraIconed: false,
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                          text: "Hello, ",
                          children: [
                            TextSpan(
                                text: "Richard George",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20))
                          ]),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    const Text(
                      "richard.george@gmail.com",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Column(
              children: List.generate(
                  listOfMyAccount.length,
                  (index) => Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                        child: MyaccountItem(
                            title: listOfMyAccount[index],
                            onTap: () => log("tapped on $index"),
                            borderRadius: index == 0
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))
                                : index == listOfMyAccount.length - 1
                                    ? const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))
                                    : null),
                      ))),
        ],
      ),
    );
  }
}
