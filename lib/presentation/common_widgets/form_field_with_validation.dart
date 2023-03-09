import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/string_extensions.dart';

enum FieldType { eMail, password, normalInputField, phoneNumber }

class CustomFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final double? borderRadius;
  final FieldType type;
  final String? hintText;
  final TextStyle? hintStyle;
  final IconData? icon;
  final IconData? postFixIcon;
  final bool? obscureText;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final TextEditingController? controller;
  final VoidCallback? toggleVisibility;
  final AutovalidateMode? autovalidateMode;
  const CustomFormField(
      {this.obscureText,
      this.margin = const EdgeInsets.symmetric(horizontal: 15),
      this.borderRadius,
      this.hintStyle = const TextStyle(color: Colors.grey),
      this.toggleVisibility,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.postFixIcon,
      this.validator,
      this.padding = const EdgeInsets.only(top: 10, left: 0),
      this.controller,
      required this.type,
      this.hintText = "",
      super.key,
      this.icon = Icons.email});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xffECECEC)))),
      padding: padding,
      child: TextFormField(
          autovalidateMode: autovalidateMode,
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
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.only(bottom: 10),
              filled: true,
              suffixIcon: type == FieldType.password
                  ? IconButton(
                      icon: Icon(postFixIcon ?? Icons.visibility_off),
                      onPressed: toggleVisibility,
                      color: Colors.black,
                    )
                  : null,
              hintText: hintText,
              labelText: hintText,
              hintStyle: hintStyle,
              focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              errorStyle: const TextStyle(color: Colors.green),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppPaintings.themeGreenColor)),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent))),
          validator: autovalidateMode != AutovalidateMode.disabled
              ? (type == FieldType.eMail
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
                            return "$hintText Cant be empty";
                          } else if (value.length < 8) {
                            return "Password Must be greater than 8 charactors";
                          } else if (!value.isValidPassword) {
                            return "Must contain an Uppercase,Lowercase,a special char & 1 digit";
                          } else {
                            return null;
                          }
                        }
                      : type == FieldType.normalInputField
                          ? (value) {
                              if (value == '' || value == null) {
                                return "$hintText Cant be empty";
                              } else if (value.length < 3 ||
                                  value.length > 16) {
                                return "$hintText must be 3-14 Charactors";
                              } else {
                                return null;
                              }
                            }
                          : type == FieldType.phoneNumber
                              ? (value) {
                                  if (value == '' || value == null) {
                                    return "$hintText Cant be empty";
                                  } else if (value.length < 10) {
                                    return "Phone number Invalid";
                                  } else {
                                    return null;
                                  }
                                }
                              : (value) {
                                  return null;
                                })
              : null),
    );
  }
}
