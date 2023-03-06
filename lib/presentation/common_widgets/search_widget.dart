import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/string_extensions.dart';

enum FieldType { eMail, password, normalInputField, phoneNumber }

class CustomSearchField extends StatelessWidget {
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final double? borderRadius;
  final FieldType type;
  final String? hintText;
  final IconData? icons;
  final IconData? postFixIcon;
  final bool? obscureText;
  final EdgeInsetsGeometry padding;
  final TextEditingController? controller;
  final VoidCallback? toggleVisibility;
  final void Function()? onEditingComplete;
  final AutovalidateMode? autovalidateMode;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  const CustomSearchField(
      {this.obscureText,
      this.autovalidateMode,
      this.onChanged,
      this.onEditingComplete,
      this.borderRadius,
      this.toggleVisibility,
      this.postFixIcon,
      this.validator,
      this.padding = const EdgeInsets.symmetric(horizontal: 20),
      this.controller,
      required this.type,
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
        autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
        onEditingComplete: onEditingComplete,
        cursorColor: AppPaintings.themeGreenColor,
        controller: controller,
        inputFormatters: [
          type == FieldType.eMail
              ? LengthLimitingTextInputFormatter(30)
              : type == FieldType.normalInputField
                  ? LengthLimitingTextInputFormatter(15)
                  : type == FieldType.phoneNumber
                      ? LengthLimitingTextInputFormatter(10)
                      : LengthLimitingTextInputFormatter(20),
          type == FieldType.normalInputField
              ? FilteringTextInputFormatter.allow(RegExp("[A-Z a-z]"))
              : type == FieldType.phoneNumber
                  ? FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                  : FilteringTextInputFormatter.deny(RegExp("")),
        ],
        keyboardType: type == FieldType.eMail
            ? TextInputType.emailAddress
            : type == FieldType.password
                ? TextInputType.name
                : type == FieldType.phoneNumber
                    ? TextInputType.phone
                    : TextInputType.name,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          errorMaxLines: 1,
          suffixIcon: type == FieldType.password
              ? TextButton(
                  onPressed: toggleVisibility,
                  child: const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 18,
                  ))
              : null,
          fillColor: Colors.white,
          hintText: hintText,
          labelText: labelText,
          hintStyle: hintStyle,
          labelStyle: labelStyle,
          filled: true,
          prefixIcon: const Icon(Icons.search, color: Colors.green),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
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
        validator: validator ??
            (type == FieldType.eMail
                ? (value) {
                    if (value!.isEmpty) {
                      return "$hintText Cant be empty";
                    } else if (!value.isValidEmail) {
                      return "Invalid Email";
                    } else {
                      return null;
                    }
                  }
                : type == FieldType.password
                    ? (value) {
                        if (value == '' || value == null) {
                          return "$hintText is blank";
                        } else if (value.length < 6) {
                          return "Password should be minimum 6 characters";
                        } else if (!value.isValidPassword) {
                          return "Must contain an Uppercase,Lowercase,a special char & 1 digit";
                        } else {
                          return null;
                        }
                      }
                    : type == FieldType.normalInputField
                        ? (value) {
                            if (value == '' || value == null) {
                              return "$hintText is empty";
                            } else if (value.length < 3 || value.length > 16) {
                              return "$hintText must be 3-14 Charactors";
                            } else {
                              return null;
                            }
                          }
                        : (value) {
                            if (value == '' || value == null) {
                              return "$hintText Cant be empty";
                            } else if (value.length < 10) {
                              return "Phone number Invalid";
                            } else {
                              return null;
                            }
                          }),
      ),
    );
  }
}
