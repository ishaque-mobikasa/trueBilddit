import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/controllers_binding/address_controller.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/dummy_address_list.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/widgets/address_card.dart';

class ViewAllAddressView extends GetView<ViewAllAddressController> {
  const ViewAllAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(top: Get.height * 0.08),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: Get.height * 0.01),
                height: Get.height * 0.065,
                child: ShortButton(
                    buttonTextStyle: TextStyle(
                        fontSize: 14,
                        color: AppPaintings.themeGreenColor,
                        fontWeight: FontWeight.w500),
                    backGroundColor: const Color.fromARGB(255, 255, 255, 255),
                    maxWidth: Get.width * 0.95,
                    buttonType: ButtonType.outLinedButton,
                    outlineButtonBorderColor: AppPaintings.kWhite,
                    buttonText: " + ADD NEW ADDRESS",
                    onPressed: () {
                      log("Add new Address");
                    }),
              ),
              Column(
                  children: List.generate(
                      dummyAddresses.length,
                      (index) =>
                          AddressCard(addressData: dummyAddresses[index])))
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.07,
          child: AppBar(
            centerTitle: true,
            title: Text(
              "Addresses",
              style: AppPaintings.customLargeText.copyWith(
                  color: AppPaintings.kWhite, fontWeight: FontWeight.w500),
            ),
            elevation: 0,
            backgroundColor: AppPaintings.themeGreenColor,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
