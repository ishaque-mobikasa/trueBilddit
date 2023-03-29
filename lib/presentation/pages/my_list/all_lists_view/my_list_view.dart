import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/routes/routes.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/my_account/widgets/my_account_item.dart';

import 'controllers_bindings/my_list_controller.dart';
import 'widgets/add_list_modal.dart';

class MyListView extends GetView<MyListController> {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 103.h),
            SizedBox(
              height: 50.h,
              width: 345.w,
              child: ShortButton(
                  buttonTextStyle: TextStyle(
                      fontSize: 14,
                      color: AppPaintings.themeGreenColor,
                      fontWeight: FontWeight.w500),
                  backGroundColor: const Color.fromARGB(255, 255, 255, 255),
                  maxWidth: Get.width,
                  buttonType: ButtonType.outLinedButton,
                  outlineButtonBorderColor: AppPaintings.kWhite,
                  buttonText: "+ CREATE NEW LIST",
                  onPressed: () {
                    Get.bottomSheet(const AddNewWishListModal());
                    log("Add new List");
                  }),
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 11.h, left: 15.w, right: 15.w),
                physics: const BouncingScrollPhysics(),
                child: Column(
                    children: List.generate(
                        10,
                        (index) => MyaccountItem(
                            padding: EdgeInsets.only(left: 17.w, right: 22.w),
                            title: 'List ${index + 1}',
                            onTap: () {
                              log("tapped on $index");
                              Get.toNamed(Routes.selectedListView,
                                  arguments: 'List ${index + 1}');
                            },
                            borderRadius: index == 0
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))
                                : index == 9
                                    ? const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))
                                    : null))),
              ),
            ),
          ],
        ),
        const CustomAppBar(
          title: "My Lists",
        )
      ],
    );
  }
}
