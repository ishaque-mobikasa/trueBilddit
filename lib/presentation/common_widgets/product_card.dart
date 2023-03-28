import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/product_model.dart';

import 'add_substract_button.dart';

// class ProductCard extends StatelessWidget {
//   final ProductModel product;
//   final IconData? icon;
//   final Color? iconColor;
//   final void Function()? onStarButtonClick;
//   const ProductCard(
//       {super.key,
//       this.iconColor,
//       required this.product,
//       this.icon,
//       this.onStarButtonClick});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Card(
//       elevation: 1,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: Container(
//         padding: const EdgeInsets.all(5),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             border: const Border(),
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(10)),
//         constraints:
//             BoxConstraints(maxWidth: size.width, maxHeight: size.height * 0.13),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Flexible(
//                 flex: 1,
//                 child: Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           color: const Color(0xffF8F8F8),
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Center(
//                         child: Image.asset(
//                           product.image,
//                           height: 60,
//                           width: 60,
//                         ),
//                       ),
//                     )
//                   ],
//                 )),
//             Flexible(
//                 flex: 3,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: size.width * 0.4,
//                         child: Text(
//                           product.title,
//                           maxLines: 2,
//                           style: const TextStyle(
//                               fontSize: 12, fontWeight: FontWeight.w300),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           AddSubstractButton(
//                             count: 1,
//                             borderColor: const Color(0xffECECEC),
//                             onAddButtonClick: () => log("increased"),
//                             onSubstractButtonClick: () => log("Reduced"),
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           ShortButton(
//                               buttonType: ButtonType.elevatedButton,
//                               buttonText: "ADD",
//                               onPressed: () {
//                                 log("Added to Cart");
//                               })
//                         ],
//                       )
//                     ],
//                   ),
//                 )),
//             Expanded(
//                 child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 icon != null
//                     ? GestureDetector(
//                         onTap: onStarButtonClick,
//                         child: Icon(
//                           icon,
//                           color: iconColor,
//                           size: 17,
//                         ),
//                       )
//                     : const SizedBox(
//                         height: 17,
//                         width: 17,
//                       ),
//                 Column(
//                   children: [
//                     Text(
//                       "\u00A3${product.price.toString()}",
//                       style: const TextStyle(
//                           fontSize: 12, fontWeight: FontWeight.w500),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     const Text(
//                       "ex.VAT \u00A34.9",
//                       style: TextStyle(fontSize: 8),
//                       overflow: TextOverflow.ellipsis,
//                     )
//                   ],
//                 )
//               ],
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final IconData? icon;
  final Color? iconColor;
  final EdgeInsets? margin;
  final void Function()? onStarButtonClick;
  const ProductCard(
      {super.key,
      this.margin,
      this.iconColor,
      required this.product,
      this.icon,
      this.onStarButtonClick});

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
                EdgeInsets.only(left: 9.w, right: 12.w, bottom: 11, top: 9.h),
            child: Container(
                height: 74.w,
                width: 74.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: const Color(0xffF8F8F8)),
                padding: EdgeInsets.only(
                    left: 13.w, right: 12.w, bottom: 13.h, top: 14.h),
                child: Image.asset(
                  product.image,
                  height: 47.h,
                  width: 49.w,
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
                          fontSize: 12.sp, fontWeight: FontWeight.w300),
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
                        child: Container(
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
                        ),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(
            width: 50.w,
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
                    children: [
                      SizedBox(
                        height: 18.h,
                        child: Text(
                          "\u00A3${product.price.toString()}",
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
                          style: TextStyle(fontSize: 8.sp),
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
