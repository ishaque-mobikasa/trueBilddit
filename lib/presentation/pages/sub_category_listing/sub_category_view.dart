import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          padding: EdgeInsets.only(top: Get.height * 0.08),
          physics: const BouncingScrollPhysics(),
          child: Column(
              children: List.generate(
                  subCategoryItems.length,
                  (index) => Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                        child: MyaccountItem(
                            title: subCategoryItems[index],
                            onTap: () => log("tapped on $index"),
                            borderRadius: index == 0
                                ? const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))
                                : index == subCategoryItems.length - 1
                                    ? const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))
                                    : null),
                      ))),
        ),
        SizedBox(
          height: Get.height * 0.065,
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
