import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/product_model.dart';

class ProductRatingCard extends StatelessWidget {
  const ProductRatingCard(
      {super.key,
      required this.product,
      this.padding,
      this.margin,
      this.onProductRated});
  final ProductModel product;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final void Function(ProductModel product, double rating)? onProductRated;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      padding: padding,
      height: 56.h,
      width: size.width.w,
      decoration: BoxDecoration(
        color: AppPaintings.kWhite,
        border:
            Border(bottom: BorderSide(color: AppPaintings.dimWhite, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(product.title,
              style: AppPaintings.customSmallText.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  color: AppPaintings.themeBlack)),
          SizedBox(
              height: 20.h,
              child: RatingBar(
                  itemSize: 14.sp,
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
                  onRatingUpdate: (rating) => onProductRated != null
                      ? onProductRated!(product, rating)
                      : null))
        ],
      ),
    );
  }
}
