import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/pages/product_description/controller_binding/pdp_controller.dart';
import 'package:truebildit/presentation/pages/product_description/widget/build_dots.dart';
import 'package:truebildit/presentation/pages/product_description/widget/carousal_image.dart';
import 'package:truebildit/presentation/pages/product_description/widget/product_tile.dart';
import 'package:truebildit/presentation/pages/product_description/widget/two_button.dart';

import 'widget/quantity_widget.dart';

class PDPview extends GetView<PDPcontroller> {
  const PDPview({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel productModel = ProductModel(
        id: "1",
        title: "Brass Basin Mixer Tap  Aquant",
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        price: 89.43,
        sku: "75387584",
        image: AssetStrings.dummyImage);

    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              ColoredBox(
                color: AppPaintings.scaffoldBackgroundDimmed,
                child: SizedBox(
                  height: 253.h,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          iconSize: 30.sp,
                          color: AppPaintings.themeGreenColor,
                          onPressed: controller.onBackWardButtonClick,
                          icon: const Icon(CupertinoIcons.chevron_left),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CarouselSlider(
                            carouselController: controller.carousalController,
                            items: List.generate(
                                5, (index) => const CarousalImage()),
                            options: CarouselOptions(
                              autoPlay: true,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) =>
                                  controller.dotsChanger(index, 5),
                            )),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          iconSize: 30.sp,
                          color: AppPaintings.themeGreenColor,
                          onPressed: controller.onForwardButtonClick,
                          icon: const Icon(CupertinoIcons.chevron_right),
                        ),
                      ),
                      Positioned(
                          top: 19.h,
                          right: 14.w,
                          child: GestureDetector(
                            onTap: () {
                              log("Added as a favourite");
                            },
                            child: SizedBox(
                              child: Icon(
                                Icons.star_border_outlined,
                                color: AppPaintings.carousalImageStarColor,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 13.h),
                color: AppPaintings.kWhite,
                child: Column(
                  children: [
                    Obx(
                      () => BuildDots(
                          currentIndex: controller.dotsIndex.value,
                          dotsCount: 5,
                          dotsColor: AppPaintings.themeGreenColor),
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Container(
                      height: 26.h,
                      padding: EdgeInsets.only(left: 14.w),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        productModel.title,
                        style: AppPaintings.customLargeText
                            .copyWith(fontSize: 20.sp),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 14.w),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'SKU: ${productModel.sku}',
                        style: AppPaintings.customSmallText
                            .copyWith(fontSize: 12.sp),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 14.w),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '£ ${productModel.price.toString()}',
                        style: AppPaintings.customLargeText
                            .copyWith(fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Obx(
                      () => QuantityWidget(
                        onAddButtonPress: controller.onAddButtonPress,
                        onSubstractButtonPress:
                            controller.onAddSubstractButtonPress,
                        quantity: controller.itemQuantity.value,
                        height: 52.h,
                        margin: EdgeInsets.symmetric(horizontal: 15.w),
                      ),
                    ),
                    ExpansionTile(
                      collapsedIconColor: AppPaintings.themeBlack,
                      textColor: AppPaintings.themeBlack,
                      title: Text(
                        "Description",
                        style: AppPaintings.customLargeText.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      iconColor: AppPaintings.themeBlack,
                      childrenPadding: EdgeInsets.only(
                          left: 15.w, right: 15.w, bottom: 15.h),
                      children: [
                        Text(
                          productModel.description,
                        )
                      ],
                    ),
                    Container(
                      height: 1.h,
                      color: AppPaintings.pdpQuantityBorderColor,
                      margin: EdgeInsets.symmetric(horizontal: 15.w),
                    ),
                    ExpansionTile(
                      collapsedIconColor: AppPaintings.themeBlack,
                      textColor: AppPaintings.themeBlack,
                      title: Text(
                        "Technical Specifications",
                        style: AppPaintings.customLargeText.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      iconColor: AppPaintings.themeBlack,
                      childrenPadding: EdgeInsets.symmetric(horizontal: 15.w),
                      children: [
                        Text(
                          productModel.description,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20.h, bottom: 13.h, left: 15.w),
                height: 20,
                width: Get.width.w,
                child: Text(
                  "Frequently Bought Items",
                  style: AppPaintings.customLargeText
                      .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      10,
                      (index) => Container(
                            margin: EdgeInsets.only(
                                right: 8.w, left: index == 0 ? 15.w : 0.w),
                            child: ProductTileCard(
                                onAddButtonClick: (productModel) =>
                                    log(productModel.id),
                                onStarButtonClick: (productModel) =>
                                    log(productModel.id),
                                productModel: productModel),
                          )),
                ),
              ),
              SizedBox(
                height: 70.h,
              )
            ],
          ),
        ),
        Positioned(
            bottom: 8.h,
            child: TwoButtons(
              productModel: productModel,
              onAddToBasketClick: (product) => log(product.title.toString()),
            )),
        CustomAppBar(
          height: 90.h,
          title: "Details",
        ),
      ],
    );
  }
}
