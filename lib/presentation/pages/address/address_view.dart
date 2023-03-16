import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/address/controllers_binding/address_controller.dart';
import 'package:truebildit/presentation/pages/address/widgets/address_card.dart';

class AddressView extends GetView<AddressController> {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
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
        Container(
          margin: EdgeInsets.only(top: Get.height * 0.01),
          height: 55,
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
        const AddressCard(
          isDefault: true,
          name: "Richard George",
          addressType: "Home",
          address:
              '36 north near st. street, Netherton, UK - DD9 7SU +919876543210 ',
        ),
        const AddressCard(
          name: "John Micheal",
          addressType: "Work",
          address:
              '36 north near st. street, Netherton, UK - DD9 7SU +919876543210 ',
        ),
        const AddressCard(
          isDefault: true,
          name: "Richard George",
          addressType: "Home",
          address:
              '36 north near st. street, Netherton, UK - DD9 7SU +919876543210 ',
        ),
        const AddressCard(
          name: "John Micheal",
          addressType: "Work",
          address:
              '36 north near st. street, Netherton, UK - DD9 7SU +919876543210 ',
        ),
      ],
    );
  }
}
