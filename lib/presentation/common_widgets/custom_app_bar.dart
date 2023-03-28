import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.title = "", this.titleImage, this.height = 90});
  final String? title;
  final double? height;
  final Widget? titleImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AppBar(
        elevation: 0,
        backgroundColor: AppPaintings.themeGreenColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => {Get.back()},
        ),
        title: titleImage ?? Text(title!),
      ),
    );
  }
}
