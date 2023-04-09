import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class BuildDots extends StatelessWidget {
  final int currentIndex;
  final Color dotsColor;
  final int dotsCount;
  const BuildDots(
      {required this.currentIndex,
      super.key,
      required this.dotsCount,
      required this.dotsColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          dotsCount,
          (index) => Container(
                height: 5,
                width: 5,
                margin: EdgeInsets.only(right: 3.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: currentIndex == index
                        ? dotsColor
                        : AppPaintings.loginButtonBorderColor),
              )),
    );
  }
}
