import 'package:flutter/material.dart';

class PrimaryFilledButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final IconData? icons;
  final Color? colors;
  final TextStyle? style;
  final Color? iconColor;
  final Color borderColor;
  final String? imageAsset;
  final double boarderRadius;

  const PrimaryFilledButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.borderColor,
    required this.boarderRadius,
    this.icons,
    this.colors,
    this.style,
    this.iconColor,
    this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: colors,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(boarderRadius),
            side: BorderSide(width: 1.0, color: borderColor),
          ),
          elevation: 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icons != null
                ? Icon(
                    icons,
                    size: 12.0,
                    color: iconColor,
                  )
                : imageAsset != null
                    ? Image.asset(imageAsset ?? "")
                    : Container(),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
