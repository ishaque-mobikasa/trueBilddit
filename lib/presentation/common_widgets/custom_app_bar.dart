import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      this.title = "",
      this.backGroundColor,
      this.actions,
      this.titleImage,
      this.iconColor,
      this.isBackButtonAllowed = true,
      this.height,
      this.paddingForTitleFromBottom = 0.0,
      this.onBackButtonPressed});
  final String? title;
  final double? paddingForTitleFromBottom;
  final double? height;
  final bool? isBackButtonAllowed;
  final Widget? titleImage;
  final List<Widget>? actions;
  final Color? backGroundColor;
  final Color? iconColor;
  final void Function()? onBackButtonPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 90.h,
      child: AppBar(
        actions: actions,
        elevation: 0,
        backgroundColor: backGroundColor ?? AppPaintings.themeGreenColor,
        centerTitle: true,
        leading: isBackButtonAllowed!
            ? Padding(
                padding: EdgeInsets.only(bottom: paddingForTitleFromBottom!),
                child: GestureDetector(
                  onTap: onBackButtonPressed ?? () => Get.back(),
                  child: Icon(Icons.arrow_back_ios,
                      size: 18.sp, color: iconColor ?? AppPaintings.kWhite),
                ))
            : const SizedBox.shrink(),
        title: Padding(
          padding: EdgeInsets.only(bottom: paddingForTitleFromBottom!),
          child: titleImage ??
              Text(
                title!,
                style: AppPaintings.customLargeText
                    .copyWith(color: AppPaintings.kWhite),
              ),
        ),
      ),
    );
  }
}
