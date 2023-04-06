import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';

class OrderConfirmedView extends StatelessWidget {
  const OrderConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const CustomAppBar(
            isBackButtonAllowed: false,
            title: "Order Confirmation",
          ),
          SizedBox(height: 134.h),
          Image.asset(
            AssetStrings.orderConfirmedImage,
            height: 82.h,
            width: 82.w,
          ),
          SizedBox(height: 21.h),
          SizedBox(
            height: 44.h,
            width: 189.w,
            child: Text(
              AppStrings.orderConfirmed,
              maxLines: 2,
              style: AppPaintings.customLargeText
                  .copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 11.h),
          SizedBox(
            height: 40.h,
            width: 225.w,
            child: Text(
              AppStrings.youCanTrackOrder,
              maxLines: 2,
              style: AppPaintings.customSmallText.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                  color: AppPaintings.themeLightBlack),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 26.h),
          SizedBox(
            height: 42.h,
            width: 300.w,
            child: LongButton(
                buttonType: ButtonType.elevatedButton,
                buttonText: "CONTINUE SHOPPING",
                onPressed: () {
                  log("Continue Shopping Button Pressed");
                }),
          )
        ],
      ),
    );
  }
}
