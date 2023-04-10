import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/data/models/order_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/pages/feed_back/contrtoller_binding/feed_back_binding.dart';
import 'package:truebildit/presentation/pages/feed_back/widgets/delivery_card.dart';
import 'package:truebildit/presentation/pages/feed_back/widgets/selectable_button.dart';

class FeedBackPageOne extends GetView<FeedBackController> {
  const FeedBackPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.themeGreenColor,
    ));

    return Material(
      color: AppPaintings.kWhite,
      child: Column(
        children: [
          CustomAppBar(
            height: 90.h,
            title: 'FeedBack',
          ),
          DeliveryCard(
            order: OrderModel(
                id: "123456",
                orderDate: DateTime.now(),
                deliveryDate: DateTime.now(),
                orderAmount: 100,
                deliveryStatus: DeliveryStatus.delivered,
                paymentMethod: PaymentMethod.debitCard),
            margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 13.h),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text(
            AppStrings.howWasDelivery,
            style: AppPaintings.customLargeText.copyWith(fontSize: 16.sp),
          ),
          Container(
            margin: EdgeInsets.only(
                bottom: 16.h, top: 7.h, left: 37.w, right: 37.w),
            child: Text(
              AppStrings.yourFeedBackWillbeShared,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppPaintings.customSmallText.copyWith(
                  fontSize: 12.sp, height: 1.5, fontWeight: FontWeight.w300),
            ),
          ),
          RatingBar(
            allowHalfRating: true,
            ratingWidget: RatingWidget(
                full: Icon(
                  Icons.star,
                  color: AppPaintings.themeGreenColor,
                ),
                half: Icon(
                  Icons.star_half,
                  color: AppPaintings.themeGreenColor,
                ),
                empty: Icon(
                  Icons.star_border,
                  weight: 1,
                  color: AppPaintings.starRatingEmptyColor,
                )),
            onRatingUpdate: (value) => log(value.toString()),
          ),
          SizedBox(height: 25.h),
          SizedBox(
              width: 300.w,
              height: 72.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SelectableButton(width: 72.w, buttonText: "Too Slow"),
                      SelectableButton(
                        buttonText: "Poorly Packed",
                        isSelected: true,
                        width: 103.w,
                      ),
                      SelectableButton(
                          width: 103.w, buttonText: "Not Satisfactory"),
                    ],
                  ),
                  Row()
                ],
              ))
        ],
      ),
    );
  }
}
