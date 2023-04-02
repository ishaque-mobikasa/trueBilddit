import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/dummy_address_list.dart';
import 'package:truebildit/presentation/pages/shipping_address/controllers_binding/shipping_address_controllers.dart';

import 'widgets/shipping_address_card.dart';

class ShippingAddressView extends GetView<ShippingAddressController> {
  const ShippingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 103.h),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
                child: ShortButton(
                    buttonTextStyle: TextStyle(
                        fontSize: 14,
                        color: AppPaintings.themeGreenColor,
                        fontWeight: FontWeight.w500),
                    backGroundColor: const Color.fromARGB(255, 255, 255, 255),
                    maxWidth: 345.w,
                    buttonType: ButtonType.outLinedButton,
                    outlineButtonBorderColor: AppPaintings.kWhite,
                    buttonText: " + ADD NEW ADDRESS",
                    onPressed: () {
                      log("Add new Address");
                    }),
              ),
              SizedBox(
                height: 12.h,
              ),
              Column(
                  children: List.generate(
                      dummyAddresses.length - 1,
                      (index) => ShippingAddressCard(
                          isSelected: index == 1 ? true : false,
                          addressData: dummyAddresses[index]))),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                  height: 42.h,
                  width: 345.w,
                  child: LongButton(
                      buttonType: ButtonType.elevatedButton,
                      buttonText: "CONTINUE",
                      onPressed: () {}))
            ],
          ),
        ),
        SizedBox(
          height: 90.h,
          child: AppBar(
            centerTitle: true,
            title: Text(
              "Shipping Address",
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
