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
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/feed_back/contrtoller_binding/feed_back_controller.dart';
import 'package:truebildit/presentation/pages/feed_back/widgets/delivery_card.dart';
import 'package:truebildit/presentation/pages/feed_back/widgets/selectable_button.dart';

class FeedBackPageOne extends GetView<FeedBackController> {
  const FeedBackPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.themeGreenColor,
    ));

    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 90.h),
          child: Column(
            children: [
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
                style: AppPaintings.customLargeText
                    .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: 16.h, top: 7.h, left: 37.w, right: 37.w),
                child: Text(
                  AppStrings.yourFeedBackWillbeShared,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: AppPaintings.customSmallText.copyWith(
                      fontSize: 12.sp,
                      height: 1.5,
                      fontWeight: FontWeight.w300),
                ),
              ),
              RatingBar(
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
                onRatingUpdate: (value) => controller.onRatingCompleted(value),
              ),
              SizedBox(height: 25.h),
              Obx(() => controller.isRatingCompleted.value
                  ? Column(
                      children: [
                        SizedBox(
                            width: 300.w,
                            height: 72.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SelectableButton(
                                        onClick: () =>
                                            {controller.chooseButton(1)},
                                        width: 72.w,
                                        isSelected:
                                            controller.selectedIndex.value == 1,
                                        buttonText: "Too Slow"),
                                    SelectableButton(
                                      onClick: () {
                                        controller.chooseButton(2);
                                      },
                                      buttonText: "Poorly Packed",
                                      isSelected:
                                          controller.selectedIndex.value == 2,
                                      width: 103.w,
                                    ),
                                    SelectableButton(
                                        onClick: () {
                                          controller.chooseButton(3);
                                        },
                                        isSelected:
                                            controller.selectedIndex.value == 3,
                                        width: 103.w,
                                        buttonText: "Not Satisfactory"),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SelectableButton(
                                      isSelected:
                                          controller.selectedIndex.value == 4,
                                      onClick: () {
                                        controller.chooseButton(4);
                                      },
                                      buttonText: "Below Average",
                                      width: 106.w,
                                    ),
                                    SizedBox(width: 9.w),
                                    SelectableButton(
                                        isSelected:
                                            controller.selectedIndex.value == 5,
                                        onClick: () {
                                          controller.chooseButton(5);
                                        },
                                        width: 152.w,
                                        buttonText: "North Worth The Price"),
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: 28.h,
                        ),
                        SizedBox(
                            height: 20.h,
                            width: 143.w,
                            child: Text("Write your review",
                                style: AppPaintings.customLargeText.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold))),
                        Container(
                          height: 99.h,
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(
                                  color: AppPaintings.loginButtonBorderColor)),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                filled: true,
                                fillColor: AppPaintings.kWhite,
                                hintText: "Your feedback...",
                                hintStyle: AppPaintings.customSmallText
                                    .copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w300)),
                          ),
                        ),
                        SizedBox(
                          width: 345.w,
                          height: 42.h,
                          child: LongButton(
                              buttonType: ButtonType.elevatedButton,
                              buttonText: "CONTINUE",
                              onPressed: () {}),
                        )
                      ],
                    )
                  : const SizedBox.shrink()),
            ],
          ),
        ),
        CustomAppBar(
          height: 90.h,
          title: 'FeedBack',
        ),
      ],
    );
  }
}
