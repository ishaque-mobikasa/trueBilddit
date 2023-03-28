import 'package:flutter/material.dart';
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

  final EdgeInsetsGeometry padding;
  final TextEditingController? controller;
  final VoidCallback? toggleVisibility;
  final void Function()? onEditingComplete;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  const CustomSearchField(
      {this.onChanged,
      this.onEditingComplete,
      this.borderRadius = 10,
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
      this.hintStyle});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        onEditingComplete: onEditingComplete,
        cursorColor: AppPaintings.themeGreenColor,
        controller: controller,
        decoration: InputDecoration(
          errorMaxLines: 1,
          fillColor: AppPaintings.kWhite,
          hintText: hintText,
          hintStyle: hintStyle,
          labelStyle: labelStyle,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          prefixIcon: ImageIcon(
              color: AppPaintings.hintTextColor,
              size: 18,
              AssetImage(
                AssetStrings.searchIcon,
              )).paddingOnly(right: 8, left: 12, top: 10, bottom: 15),
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
