import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/strings.dart';

class CarousalImage extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final String? image;
  const CarousalImage({
    super.key,
    this.margin,
    this.padding,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image ?? AssetStrings.carouselImage,
      height: 94.h,
      width: 163.w,
    );
  }
}
