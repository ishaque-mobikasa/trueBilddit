import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/product_card.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/dummy_address_list.dart';
import 'package:truebildit/presentation/pages/my_basket/widgets/coupon_code_field.dart';
import 'package:truebildit/presentation/pages/my_basket/widgets/invoice_card.dart';
import 'package:truebildit/presentation/pages/orders/order_summary/controller_binding/order_summary_controller.dart';
import 'package:truebildit/presentation/pages/orders/order_summary/widget/order_confirmed.dart';

import 'widget/order_summary_address.dart';

class OrderSummaryView extends GetView<OrderSummaryController> {
  const OrderSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
    color: AppPaintings.scaffoldBackgroundDimmed,
      child: Stack(
        children: [
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 90.h),
              child: Column(
                children: [
                  Container(
                    width: Get.width.w,
                    padding: EdgeInsets.only(left: 15.w),
                    alignment: Alignment.centerLeft,
                    height: 47.h,
                    child: Text(
                      "Shipping Address",
                      style: AppPaintings.customSmallText
                          .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                  OrderSummaryAddressCard(
                    margin: EdgeInsets.only(right: 15.w, left: 15.w, bottom: 5.h),
                    onChangeButtonTap: () {
                      log("change address");
                    },
                    addressData: dummyAddresses.last,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    height: 40.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Summary",
                            style: AppPaintings.customSmallText.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 40.h,
                          child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              minSize: 10,
                              child: Text(
                                "EDIT",
                                style: AppPaintings.customSmallText.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppPaintings.themeGreenColor),
                              ),
                              onPressed: () {
                                log("Edit Button Pressed");
                              }),
                        )
                      ],
                    ),
                  ),
                  Column(
                      children: List.generate(
                    3,
                    (index) => ProductCard(
                        showAddButton: false,
                        icon: CupertinoIcons.delete,
                        onStarButtonClick: () =>
                            log("Clicked on Right icon button"),
                        product: ProductModel(
                            id: "1",
                            title: "Armoured Cable MC Wire",
                            description: "Raaja",
                            price: 89.43,
                            image: "assets/images/wire.png")),
                  )),
                  Container(
                    margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CouponCodeField(
                          width: 265.w,
                          height: 45,
                        ),
                        SizedBox(
                          height: 45,
                          width: 72.w,
                          child: ShortButton(
                              buttonType: ButtonType.elevatedButton,
                              buttonText: "Apply",
                              buttonTextStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppPaintings.kWhite),
                              buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: AppPaintings.themeGreenColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.r)),
                                  splashFactory: NoSplash.splashFactory,
                                  shadowColor: Colors.transparent),
                              onPressed: () {
                                log("Applied Coupon code");
                              }),
                        )
                      ],
                    ),
                  ),
                  InvoiceCard(
                      subTotal: 129,
                      delivery: 10,
                      vat: 20,
                      margin: EdgeInsets.only(
                          left: 15.w, right: 15.w, top: 13.h, bottom: 14.h)),
                  SizedBox(
                      height: 42.h,
                      width: 345.w,
                      child: LongButton(
                          buttonType: ButtonType.elevatedButton,
                          buttonText: "CONTINUE",
                          onPressed: () async {
                            await Get.to(() => const OrderConfirmedView());
                          })),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              )),
          const CustomAppBar(
            title: 'Order Summary',
          ),
        ],
      ),
    );
  }
}
