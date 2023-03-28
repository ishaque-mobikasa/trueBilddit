import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/routes/routes.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/pages/my_account/widgets/my_account_item.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/controllers_bindings/sub_category_controller.dart';

import 'widgets/category_list.dart';

class SubCategoryView extends GetView<SubCategoryController> {
  const SubCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 103.h, left: 15.w, right: 15.w),
          physics: const BouncingScrollPhysics(),
          child: Column(
              children: List.generate(
                  subCategoryItems.length,
                  (index) => MyaccountItem(
                      padding: EdgeInsets.only(left: 17.w, right: 22.w),
                      title: subCategoryItems[index],
                      onTap: () {
                        log("tapped on $index");
                        Get.toNamed(Routes.subCategoryItemsView,arguments:subCategoryItems[index] );
                      },
                      borderRadius: index == 0
                          ? BorderRadius.only(
                              topLeft: Radius.circular(10.r),
                              topRight: Radius.circular(10.r))
                          : index == subCategoryItems.length - 1
                              ? BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r))
                              : null))),
        ),
        SizedBox(
          height: 90.h,
          child: AppBar(
            elevation: 0,
            backgroundColor: AppPaintings.themeGreenColor,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => {},
            ),
            title: const Text(
              'Plumbing & Heating',
            ),
          ),
        ),
      ],
    );
  }
}
