import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/product_model.dart';

class TwoButtons extends StatelessWidget {
  final void Function(ProductModel product)? onAddToBasketClick;
  final void Function(ProductModel product)? onBuyNowClick;
  final ProductModel productModel;
  const TwoButtons({
    Key? key,
    this.onAddToBasketClick,
    this.onBuyNowClick,
    required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 50.h,
      width: size.width.w,
      decoration: BoxDecoration(color: AppPaintings.kWhite),
      child: Row(
        children: [
          Expanded(
              child: SizedBox(
            height: 50.h,
            child: RawMaterialButton(
                onPressed: onAddToBasketClick != null
                    ? () => onAddToBasketClick!(productModel)
                    : null,
                child: Text("ADD TO BASKET",
                    style: AppPaintings.customLargeText.copyWith(
                        color: AppPaintings.themeGreenColor, fontSize: 14.sp))),
          )),
          Expanded(
              child: SizedBox(
            height: 50.h,
            child: RawMaterialButton(
                fillColor: AppPaintings.themeGreenColor,
                shape: const BeveledRectangleBorder(),
                onPressed: onBuyNowClick != null
                    ? () => onBuyNowClick!(productModel)
                    : null,
                child: Text(
                  "BUY NOW",
                  style: AppPaintings.customLargeText
                      .copyWith(color: AppPaintings.kWhite, fontSize: 14.sp),
                )),
          ))
        ],
      ),
    );
  }
}
