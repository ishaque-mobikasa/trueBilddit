import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';

class CustomSearchField extends StatelessWidget {
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final double? borderRadius;
  final String? hintText;
  final IconData? icons;
  final IconData? postFixIcon;
  final Color? iconColor;
  final EdgeInsetsGeometry padding;
  final TextEditingController? controller;
  final VoidCallback? toggleVisibility;
  final void Function()? onEditingComplete;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final dynamic initialValue;
  const CustomSearchField(
      {this.onChanged,
      this.onEditingComplete,
      this.borderRadius = 10,
      this.initialValue,
      this.toggleVisibility,
      this.postFixIcon,
      this.validator,
      this.padding = const EdgeInsets.symmetric(horizontal: 15),
      this.controller,
      super.key,
      this.icons,
      this.hintText,
      this.labelText,
      this.labelStyle,
      this.hintStyle,
      this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(31, 31, 31, 0.13),
            spreadRadius: 0,
            blurRadius: 20.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      padding: padding,
      child: TextFormField(
        initialValue: initialValue ?? "",
        onEditingComplete: onEditingComplete,
        cursorColor: AppPaintings.themeGreenColor,
        controller: controller,
        decoration: InputDecoration(
          errorMaxLines: 1,
          fillColor: AppPaintings.kWhite,
          hintText: hintText,
          hintStyle: hintStyle,
          labelStyle: labelStyle,
          contentPadding: const EdgeInsets.only(top: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          prefixIcon: ImageIcon(
              color: iconColor ?? AppPaintings.hintTextColor,
              size: 15,
              AssetImage(
                AssetStrings.searchIcon,
              )).paddingOnly(right: 0.w, left: 12.w, top: 14.h, bottom: 15.h),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
        ),
      ),
    );
  }
}
