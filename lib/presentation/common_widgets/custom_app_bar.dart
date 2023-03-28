import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      this.title = "",
      this.actions,
      this.titleImage,
      this.isBackButtonAllowed = true,
      this.height});
  final String? title;
  final double? height;
  final bool? isBackButtonAllowed;
  final Widget? titleImage;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 90.h,
      child: AppBar(
        actions: actions,
        elevation: 0,
        backgroundColor: AppPaintings.themeGreenColor,
        centerTitle: true,
        leading: isBackButtonAllowed!
            ? IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => {Get.back()},
              )
            : null,
        title: titleImage ?? Text(title!),
      ),
    );
  }
}
