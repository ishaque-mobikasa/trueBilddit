import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: AppBar(
        elevation: 0,
        backgroundColor: AppPaintings.themeGreenColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => {Get.back()},
        ),
        title: Text(
          title
        ),
      ),
    );
  }
}
