import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/circled_profile_image.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/pages/my_account/controllers_binding/my_account_controller.dart';
import 'package:truebildit/presentation/pages/my_account/widgets/list_of_my_account.dart';
import 'package:truebildit/presentation/pages/my_account/widgets/my_account_item.dart';

class MyAccountView extends GetView<MyAccountController> {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    AssetStrings.myAccountGreen,
                  ),
                  Positioned(
                    top: 80.h,
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 213.h, minWidth: Get.width),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircledProfileImage(
                            isCameraIconed: false,
                          ),
                          Column(
                            children: [
                              RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.montserrat().fontFamily,
                                        fontSize: 20),
                                    text: "Hello, ",
                                    children: [
                                      TextSpan(
                                          text: "Richard George",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily:
                                                  GoogleFonts.montserrat()
                                                      .fontFamily,
                                              fontSize: 20))
                                    ]),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                "richard.george@gmail.com",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  CustomAppBar(
                    height: 70,
                    backGroundColor:
                        AppPaintings.themeGreenColor.withOpacity(0.07),
                    isBackButtonAllowed: false,
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ))
                    ],
                    titleImage: Image.asset(AssetStrings.bildItLogo,
                        width: 94.w, height: 24.h),
                  ),
                ],
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 12.h),
                child: Column(
                    children: List.generate(
                        listOfMyAccount.length,
                        (index) => MyaccountItem(
                            padding: EdgeInsets.only(left: 15.w, right: 22.w),
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
                                    : null))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
