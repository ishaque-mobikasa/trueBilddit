import 'package:flutter/material.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class MyaccountItem extends StatelessWidget {
  const MyaccountItem(
      {this.borderRadius,
      this.padding = const EdgeInsets.symmetric(horizontal: 20),
      this.margin,
      this.onTap,
      required this.title,
      super.key});
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final String title;
  final void Function()? onTap;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: borderRadius ??
            const BorderRadius.only(
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0)),
        child: Container(
          padding: padding,
          margin: margin,
          constraints: BoxConstraints(
            maxHeight: size.height * 0.08,
            minHeight: size.height * 0.07,
            maxWidth: size.width,
          ),
          decoration: BoxDecoration(
              color: AppPaintings.kWhite,
              border: BorderDirectional(
                  bottom: BorderSide(color: AppPaintings.dimWhite))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textAlign: TextAlign.right,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: AppPaintings.themeLightBlack,
              )
            ],
          ),
        ),
      ),
    );
  }
}
