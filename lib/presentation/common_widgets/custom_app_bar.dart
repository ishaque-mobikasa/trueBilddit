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
      this.height});
  final String? title;
  final double? height;
  final bool? isBackButtonAllowed;
  final Widget? titleImage;
  final List<Widget>? actions;
  final Color? backGroundColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 90.h,
      child: AppBar(
        actions: actions,
        elevation: 0,
        toolbarHeight: height ?? 90.h,
        backgroundColor: backGroundColor ?? AppPaintings.themeGreenColor,
        centerTitle: true,
        leading: isBackButtonAllowed!
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: iconColor ?? AppPaintings.kWhite,
                ),
                onPressed: () => {Get.back()},
              )
            : const SizedBox.shrink(),
        title: titleImage ?? Text(title!),
      ),
    );
  }
}
