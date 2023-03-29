import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class MyaccountItem extends StatelessWidget {
  const MyaccountItem(
      {this.borderRadius,
      this.padding = const EdgeInsets.symmetric(horizontal: 0),
      this.margin,
      this.onTap,
      this.height,
      this.width,
      required this.title,
      super.key});
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final String title;
  final double? height;
  final double? width;
  final void Function()? onTap;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: borderRadius ??
            const BorderRadius.only(
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0)),
        child: Container(
          height: height ?? 54.h,
          width: width ?? size.width.w,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
              color: AppPaintings.kWhite,
              border: BorderDirectional(
                  bottom: BorderSide(color: AppPaintings.dimWhite))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: AppPaintings.customSmallText
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              Flexible(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 14.sp,
                  color: AppPaintings.themeLightBlack,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
