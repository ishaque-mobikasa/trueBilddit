import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';

class CarousalImage extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final void Function()? onForwardButtonPress;
  final void Function()? onBackwardButtonPress;
  const CarousalImage(
      {super.key,
      this.margin,
      this.padding,
      this.onForwardButtonPress,
      this.onBackwardButtonPress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: padding,
          margin: margin,
          height: 266.h,
          decoration:
              BoxDecoration(color: AppPaintings.scaffoldBackgroundDimmed),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new,
                    color: AppPaintings.themeGreenColor),
                onPressed: onBackwardButtonPress,
              ),
              SizedBox(
                child: Image.asset(
                  AssetStrings.carouselImage,
                  height: 94.h,
                  width: 163.w,
                ),
              ),
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios,
                      color: AppPaintings.themeGreenColor),
                  onPressed: onForwardButtonPress),
            ],
          ),
        ),
        Positioned(
            top: 19.h,
            right: 14.w,
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(
                child: Icon(
                  Icons.star_border_outlined,
                  color: AppPaintings.carousalImageStarColor,
                ),
              ),
            ))
      ],
    );
  }
}
