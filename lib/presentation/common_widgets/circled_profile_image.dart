import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utility_functions/place_holder_image.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';

class CircledProfileImage extends StatelessWidget {
  final void Function()? onTap;
  final bool isCameraIconed;
  final Color? backGroundAvatarColor;
  final Color? backGroundCameraAvatarColor;
  final double? imageAvatarRadius;
  final String image;
  const CircledProfileImage({
    super.key,
    this.onTap,
    this.backGroundCameraAvatarColor,
    this.image = placeHolder,
    this.imageAvatarRadius,
    this.backGroundAvatarColor,
    required this.isCameraIconed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          CircleAvatar(
            radius: imageAvatarRadius ?? 54.r + 2.r,
            backgroundColor: backGroundAvatarColor ?? Colors.white,
            child: CircleAvatar(
                radius: imageAvatarRadius ?? 54.r,
                backgroundImage:
                    MemoryImage(const Base64Decoder().convert(image))),
          ),
          if (isCameraIconed)
            Positioned(
                bottom: 1.h,
                right: 6.w,
                child: CircleAvatar(
                  radius: imageAvatarRadius ?? 54.r / 3,
                  backgroundColor:
                      backGroundCameraAvatarColor ?? AppPaintings.kWhite,
                  child: CircleAvatar(
                    radius: imageAvatarRadius ?? 54.r / 3 - 1.5.r,
                    backgroundImage: AssetImage(AssetStrings.cameraImage),
                  ),
                ))
        ],
      ),
    );
  }
}
