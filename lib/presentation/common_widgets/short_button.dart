import 'package:flutter/material.dart';

class ShortButton extends StatelessWidget {
  const ShortButton(
      {super.key,
      this.buttonStyle,
      required this.buttonText,
      required this.onPressed,
      this.iconImage});

  final ButtonStyle? buttonStyle;
  final void Function()? onPressed;
  final String buttonText;
  final String? iconImage;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: size.width * 0.18,
        maxHeight: size.height * 0.045,
      ),
      child: ElevatedButton(
          style: buttonStyle ??
              ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: Colors.green,
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
                      height: 20, width: 20, child: Image.asset(iconImage!)),
              Expanded(
                  child: Text(
                buttonText,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
              ))
            ],
          )),
    );
  }
}
