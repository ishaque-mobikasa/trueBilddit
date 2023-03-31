import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/product_card.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/my_basket/widgets/coupon_code_field.dart';
import 'package:truebildit/presentation/pages/my_basket/widgets/invoice_card.dart';

class MyBasketView extends StatelessWidget {
  const MyBasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: "My Basket",
        ),
        Container(
          height: 15.h,
          width: Get.width.w,
          margin: EdgeInsets.only(top: 15.h, left: 16.w, bottom: 15.h),
          child: Text("3 Items",
              style: TextStyle(
                  fontSize: 14.sp,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  color: AppPaintings.themeBlack)),
        ),
        Column(
          children: List.generate(
              3,
              (index) => ProductCard(
                    margin:
                        EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                    icon: CupertinoIcons.delete,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 122,
                        image: "assets/images/wire.png"),
                  )),
        ),
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
                left: 15.w, right: 15.w, top: 13.h, bottom: 17.h)),
        SizedBox(
          height: 42.h,
          width: 345.w,
          child: LongButton(
            buttonType: ButtonType.elevatedButton,
            buttonText: "PROCEED TO CHECKOUT",
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
