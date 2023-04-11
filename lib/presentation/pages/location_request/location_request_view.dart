import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/locatio_request_controller.dart';

class LocationRequestView extends GetView<LocationRequestController> {
  const LocationRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 34.h),
          height: 52.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  log("back button pressed");
                },
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 15.w),
                    constraints: const BoxConstraints(),
                    child: Icon(
                      size: 18.h,
                      CupertinoIcons.back,
                      color: AppPaintings.themeLightBlack,
                    )),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.h),
          child: Image.asset(
            AssetStrings.bildItLogoGreen,
            width: 150.h,
            height: 38.3.w,
          ),
        ),
        SizedBox(height: 26.7.h),
        Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(maxWidth: 204.7.w, maxHeight: 204.7.h),
          child: Image.asset(
            AssetStrings.circledLocation,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 36.h),
        Container(
          constraints: BoxConstraints(maxWidth: 180.w, maxHeight: 22.h),
          child: Text(AppStrings.needYourLocation,
              style: AppPaintings.customLargeText),
        ),
        SizedBox(height: 9.h),
        Container(
          constraints: BoxConstraints(
            maxWidth: 256.w,
            maxHeight: 38.h,
          ),
          child: Text(AppStrings.requestPermissionAccess,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: AppPaintings.customSmallText),
        ),
        SizedBox(height: 29.h),
        SizedBox(
          width: 300.w,
          height: 42.h,
          child: LongButton(
            isSocialButton: true,
            buttonType: ButtonType.elevatedButton,
            buttonText: AppStrings.yourCurrentLocation,
            onPressed: () {},
            iconImage: AssetStrings.currentLocationIcon,
          ),
        ),
        SizedBox(height: 14.h),
        SizedBox(
          width: 300.w,
          height: 42.h,
          child: LongButton(
              isSocialButton: true,
              buttonType: ButtonType.outLinedButton,
              buttonText: AppStrings.enterManualLocation,
              iconImage: AssetStrings.landMarkIcon,
              onPressed: () {}),
        ),
      ],
    ));
  }
}
