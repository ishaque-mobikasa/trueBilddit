import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class CouponCodeField extends StatelessWidget {
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final TextEditingController? controller;
  const CouponCodeField(
      {super.key, this.margin, this.width, this.controller, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      height: height,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          fillColor: AppPaintings.kWhite,
          hintText: "Enter Promo Code",
          contentPadding: const EdgeInsets.only(
            left: 14,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
