import 'package:flutter/material.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

enum ButtonType { elevatedButton, outLinedButton }

class LongButton extends StatelessWidget {
  const LongButton(
      {super.key,
      required this.buttonType,
      this.buttonStyle,
      required this.buttonText,
      required this.onPressed,
      this.iconImage});
  final ButtonType buttonType;
  final ButtonStyle? buttonStyle;
  final void Function()? onPressed;
  final String buttonText;
  final String? iconImage;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return buttonType == ButtonType.elevatedButton
        ? Container(
            constraints: BoxConstraints(
                maxHeight: size.height * 0.05, maxWidth: size.width * 0.75),
            child: ElevatedButton(
                style: buttonStyle ??
                    ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent),
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: iconImage == null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 20,
                        width: size.width * 0.12,
                        child: iconImage == null
                            ? const SizedBox()
                            : Image.asset(iconImage!)),
                    Expanded(
                        child: Text(
                      buttonText,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ))
                  ],
                )),
          )
        : Container(
            constraints: BoxConstraints(
                maxHeight: size.height * 0.05, maxWidth: size.width * 0.75),
            child: OutlinedButton(
                style: buttonStyle ??
                    ElevatedButton.styleFrom(
                        side: BorderSide(
                            color: AppPaintings.themeGreenColor, width: 0.5),
                        shape: const BeveledRectangleBorder(
                            side: BorderSide(
                              width: 4,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent),
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: iconImage == null
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 20,
                        width: size.width * 0.12,
                        child: iconImage == null
                            ? const SizedBox()
                            : Image.asset(iconImage!)),
                    const Expanded(
                        child: Text(
                      "YOUR CURRENT LOCATION",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ))
                  ],
                )));
  }
}
