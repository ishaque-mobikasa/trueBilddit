import 'dart:convert';

import 'package:flutter/material.dart';
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
    this.imageAvatarRadius = 50,
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
            radius: imageAvatarRadius! + 2,
            backgroundColor: backGroundAvatarColor ?? Colors.white,
            child: CircleAvatar(
                radius: imageAvatarRadius,
                backgroundImage:
                    MemoryImage(const Base64Decoder().convert(image))),
          ),
          if (isCameraIconed)
            Positioned(
                bottom: 1,
                right: 1,
                child: CircleAvatar(
                  radius: imageAvatarRadius! - 33.5,
                  backgroundColor:
                      backGroundCameraAvatarColor ?? AppPaintings.kWhite,
                  child: CircleAvatar(
                    radius: imageAvatarRadius! - 35,
                    backgroundImage: AssetImage(AssetStrings.cameraImage),
                  ),
                ))
        ],
      ),
    );
  }
}
