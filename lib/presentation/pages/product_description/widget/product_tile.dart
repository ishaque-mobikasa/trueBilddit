import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/models/product_model.dart';

class ProductTileCard extends StatelessWidget {
  final ProductModel productModel;
  final void Function(ProductModel)? onStarButtonClick;
  final void Function(ProductModel)? onAddButtonClick;
  const ProductTileCard(
      {super.key,
      required this.productModel,
      this.onStarButtonClick,
      this.onAddButtonClick});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 205.h,
          width: 145.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.sp),
              color: AppPaintings.kWhite),
          child: Column(
            children: [
              Container(
                height: 128.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    6.sp,
                  ),
                  color: AppPaintings.productTileImgBckgrndClr,
                ),
                margin: EdgeInsets.only(top: 8.h, right: 8.w, left: 9.w),
                child: Padding(
                  padding: EdgeInsets.all(25.sp),
                  child: Image.asset(
                    AssetStrings.dummyImage,
                    height: 79.h,
                    width: 79.w,
                  ),
                ),
              ),
              Container(
                height: 36.h,
                padding: EdgeInsets.only(top: 6.h, left: 9.w, right: 24.w),
                child: Text(
                  productModel.title,
                  maxLines: 2,
                  style: AppPaintings.customSmallText
                      .copyWith(color: AppPaintings.themeBlack),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 33.h,
                padding: EdgeInsets.only(top: 6.h, left: 9.w, bottom: 12.h),
                child: Text('£ ${productModel.price.toString()}'),
              )
            ],
          ),
        ),
        Positioned(
            top: 14.h,
            right: 14.h,
            child: GestureDetector(
              onTap: onStarButtonClick != null
                  ? () => onStarButtonClick!(productModel)
                  : null,
              child: Icon(
                Icons.star_border_outlined,
                size: 17.sp,
                color: AppPaintings.carousalImageStarColor,
              ),
            )),
        Positioned(
            bottom: 10.h,
            right: 10.w,
            child: SizedBox(
              height: 18.h,
              width: 18.w,
              child: RawMaterialButton(
                  shape: CircleBorder(
                      side: BorderSide(color: AppPaintings.themeGreenColor)),
                  onPressed: onAddButtonClick != null
                      ? () => onAddButtonClick!(productModel)
                      : null,
                  child: Icon(Icons.add,
                      size: 18.sp, color: AppPaintings.themeGreenColor)),
            ))
      ],
    );
  }
}
