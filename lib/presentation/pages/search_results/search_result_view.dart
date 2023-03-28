import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/product_card.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/home/widgets/search_widget.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_bindings/search_controller.dart';

class SearchResultsView extends GetView<SearchController> {
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 150.h),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 11.h, left: 17.w, bottom: 13.h, right: 13.w),
                  height: 66.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "5234 Items found",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppPaintings.themeBlack),
                      )),
                      SizedBox(
                        height: 42.h,
                        width: 169.w,
                        child: ShortButton(
                            buttonType: ButtonType.outLinedButton,
                            outlineButtonBorderColor: AppPaintings.kWhite,
                            buttonText: "Filter",
                            iconImage: "assets/images/filter_icon.png",
                            onPressed: () => {}),
                      ),
                    ],
                  ),
                ),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
                ProductCard(
                    icon: Icons.star_border,
                    onStarButtonClick: () =>
                        log("Clicked on Right icon button"),
                    product: ProductModel(
                        id: "1",
                        title: "Armoured Cable MC Wire",
                        description: "Raaja",
                        price: 89.43,
                        image: "assets/images/wire.png")),
              ],
            )),
        CustomAppBar(
            title: Get.arguments ?? "",
            height: 120.h,
            titleImage: Image.asset(
              AssetStrings.bildItLogo,
              height: 24.h,
              width: 94.w,
            )),
        Container(
          margin: EdgeInsets.only(top: 90.h),
          height: 50.h,
          child: const CustomSearchField(
            hintText: "Search",
            initialValue: "Cable MC Wire",
          ),
        ),
      ],
    );
  }
}
