import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
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
        Padding(
          padding: EdgeInsets.only(top: Get.height * 0.1),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.065,
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
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
                  padding: EdgeInsets.only(top: Get.height * 0.02),
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      children: List.generate(
                          10,
                          (index) => Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.05),
                                child: MyaccountItem(
                                    title: 'List ${index + 1}',
                                    onTap: () => log("tapped on $index"),
                                    borderRadius: index == 0
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10))
                                        : index == 9
                                            ? const BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))
                                            : null),
                              ))),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.07,
          child: AppBar(
            backgroundColor: AppPaintings.themeGreenColor,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => {},
            ),
            title: const Text(
              'My Lists',
            ),
          ),
        ),
      ],
    );
  }
}
