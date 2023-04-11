import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/data/models/order_model.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/pages/feed_back/contrtoller_binding/feed_back_controller.dart';
import 'package:truebildit/presentation/pages/feed_back/widgets/delivery_card.dart';
import 'package:truebildit/presentation/pages/feed_back/widgets/product_rating_card.dart';

class FeedBackPageTwo extends GetView<FeedBackController> {
  const FeedBackPageTwo({super.key});

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
                AppStrings.howWasDelivery.replaceAll("delivery", "product"),
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
              ProductRatingCard(
                onProductRated: (productModel, rating) =>
                    controller.onProductRated(productModel, rating),
                margin: EdgeInsets.symmetric(horizontal: 31.w),
                product: ProductModel(
                    sku: "75387584",
                    id: "1",
                    title: "Yellow Armoured Cable MC Wire",
                    description: "Raaja",
                    price: 89.43,
                    image: "assets/images/wire.png"),
              ),
              ProductRatingCard(
                onProductRated: (product, rating) =>
                    controller.onProductRated(product, rating),
                margin: EdgeInsets.symmetric(horizontal: 31.w),
                product: ProductModel(
                    sku: "75387584",
                    id: "1",
                    title: "Armoured Cable MC Wire",
                    description: "Raaja",
                    price: 89.43,
                    image: "assets/images/wire.png"),
              ),
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
