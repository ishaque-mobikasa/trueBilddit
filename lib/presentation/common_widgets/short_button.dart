import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';

class ShortButton extends StatelessWidget {
  const ShortButton(
      {super.key,
      this.buttonStyle,
      this.backGroundColor = Colors.white,
      this.outlineButtonBorderColor,
      this.maxWidth,
      this.buttonTextStyle,
      this.iconColor,
      this.maxheight,
      required this.buttonType,
      required this.buttonText,
      required this.onPressed(),
      this.iconImage});
  final double? maxWidth;
  final double? maxheight;
  final Color? iconColor;
  final TextStyle? buttonTextStyle;
  final Color? backGroundColor;
  final Color? outlineButtonBorderColor;
  final ButtonStyle? buttonStyle;
  final void Function()? onPressed;
  final String buttonText;
  final String? iconImage;
  final ButtonType buttonType;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? size.width * 0.2.w,
        maxHeight: maxheight ?? size.height * 0.04.h,
      ),
      decoration: BoxDecoration(
          color: backGroundColor, borderRadius: BorderRadius.circular(10)),
      child: buttonType == ButtonType.elevatedButton
          ? ElevatedButton(
              style: buttonStyle ??
                  ElevatedButton.styleFrom(
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: AppPaintings.themeGreenColor,
                      shadowColor: Colors.transparent),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: iconImage == null
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceEvenly,
                children: [
                  iconImage == null
                      ? const SizedBox(
                          height: 0,
                          width: 0,
                        )
                      : ImageIcon(
                          AssetImage(iconImage!),
                          size: 20,
                        ),
                  Expanded(
                      child: Text(
                    buttonText,
                    style: buttonTextStyle ??
                        TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppPaintings.kWhite,
                            fontSize: 12.sp),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ))
                ],
              ))
          : OutlinedButton(
              style: buttonStyle ??
                  ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      side: BorderSide(
                        color: outlineButtonBorderColor ??
                            AppPaintings.themeGreenColor,
                      ),
                      splashFactory: NoSplash.splashFactory,
                      shadowColor: Colors.transparent),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconImage == null
                      ? const SizedBox(
                          height: 0,
                          width: 0,
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: ImageIcon(
                            color: iconColor ?? AppPaintings.themeBlack,
                            AssetImage(iconImage!),
                            size: 14,
                          ),
                        ),
                  Flexible(
                      child: Text(
                    buttonText,
                    style: buttonTextStyle ??
                        TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppPaintings.themeBlack,
                        ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ))
                ],
              )),
    );
  }
}
