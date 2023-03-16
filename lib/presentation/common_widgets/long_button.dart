import 'package:flutter/material.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

enum ButtonType { elevatedButton, outLinedButton }

class LongButton extends StatelessWidget {
  const LongButton(
      {super.key,
      this.buttonTextStyle,
      this.isSocialButton = false,
      this.outlinedButtonBorderColor,
      required this.buttonType,
      this.buttonStyle,
      required this.buttonText,
      required this.onPressed,
      this.iconImage});
  final ButtonType buttonType;
  final ButtonStyle? buttonStyle;
  final void Function()? onPressed;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final String? iconImage;
  final Color? outlinedButtonBorderColor;
  final bool? isSocialButton;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return buttonType == ButtonType.elevatedButton
        ? Container(
            constraints: BoxConstraints(
                minHeight: size.height * 0.053,
                maxHeight: size.height * 0.8,
                maxWidth: size.width * 0.75),
            child: ElevatedButton(
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
                      : MainAxisAlignment.spaceAround,
                  children: [
                    iconImage == null
                        ? const SizedBox(
                            height: 0,
                            width: 0,
                          )
                        : SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(iconImage!)),
                    Expanded(
                        child: Text(
                      buttonText,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: buttonTextStyle ??
                          TextStyle(
                              color: AppPaintings.kWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                    ))
                  ],
                )),
          )
        : Container(
            constraints: BoxConstraints(
                minHeight: size.height * 0.053,
                maxHeight: size.height * 0.8,
                maxWidth: size.width * 0.75),
            child: OutlinedButton(
                style: buttonStyle ??
                    ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: outlinedButtonBorderColor ??
                                AppPaintings.themeGreenColor,
                            width: 0.5),
                        shape: const BeveledRectangleBorder(
                            side: BorderSide(
                              width: 4,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent),
                onPressed: onPressed,
                child: isSocialButton == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(iconImage!)),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            buttonText,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: buttonTextStyle ??
                                TextStyle(color: AppPaintings.themeGreenColor),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: iconImage == null
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.spaceEvenly,
                        children: [
                          iconImage == null
                              ? const SizedBox(
                                  height: 0,
                                  width: 0,
                                )
                              : SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(iconImage!)),
                          Expanded(
                              child: Text(
                            buttonText,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: buttonTextStyle ??
                                TextStyle(color: AppPaintings.themeGreenColor),
                          ))
                        ],
                      )));
  }
}
