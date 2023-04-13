import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/product_model.dart';

import 'add_substract_button.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final IconData? icon;
  final Color? iconColor;
  final EdgeInsets? margin;
  final bool? showAddButton;
  final void Function()? onStarButtonClick;
  const ProductCard(
      {super.key,
      this.margin,
      this.iconColor = const Color(0xffB7B7B7),
      required this.product,
      this.icon = Icons.star_border,
      this.onStarButtonClick,
      this.showAddButton = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.h,
      margin: margin ?? EdgeInsets.only(left: 17.w, right: 13.w, bottom: 10.h),
      width: Get.width.w,
      decoration: BoxDecoration(
        color: AppPaintings.kWhite,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            padding:
                EdgeInsets.only(left: 9.w, right: 12.w, top: 9.h, bottom: 11.h),
            child: Container(
                height: 74.w,
                width: 74.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: const Color(0xffF8F8F8)),
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  product.image,
                  height: 50.h,
                  width: 50.w,
                )),
          ),
          SizedBox(
              height: 65.h,
              width: 136.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30.h,
                    width: 102.w,
                    child: Text(
                      product.title,
                      maxLines: 2,
                      style: TextStyle(
                          color: AppPaintings.themeBlack,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      AddSubstractButton(
                        count: 1,
                        borderColor: const Color(0xffECECEC),
                        onAddButtonClick: () => log("increased"),
                        onSubstractButtonClick: () => log("Reduced"),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          log("Added to Cart");
                        },
                        child: showAddButton!
                            ? Container(
                                decoration: BoxDecoration(
                                  color: AppPaintings.themeGreenColor,
                                  borderRadius: BorderRadius.circular(2.r),
                                ),
                                alignment: Alignment.center,
                                width: 56.w,
                                height: 24.h,
                                child: Text(
                                  "ADD",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: AppPaintings.kWhite),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(
            width: 45.w,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 12.w, bottom: 15.h, top: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  icon != null
                      ? GestureDetector(
                          onTap: onStarButtonClick,
                          child: Icon(icon, color: iconColor, size: 20.h),
                        )
                      : SizedBox(
                          height: 23.h,
                        ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 18.h,
                        child: Text(
                          "\u00A3 ${product.price.toStringAsFixed(2).toString()}",
                          style: TextStyle(
                              color: AppPaintings.themeBlack,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                        child: Text(
                          "ex.VAT \u00A34.9",
                          style: TextStyle(fontSize: 10.sp),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
