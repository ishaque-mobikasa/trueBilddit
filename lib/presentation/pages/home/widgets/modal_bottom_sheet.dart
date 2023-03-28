import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';

class LocationModalSheet extends StatelessWidget {
  const LocationModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: Container(
          constraints: BoxConstraints(maxHeight: 469.h),
          color: Colors.white,
          child: Column(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      width: size.width,
                      color: const Color(0xffF8F8F8),
                      child: Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Choose Your Location",
                                style: AppPaintings.customLargeText,
                              ),
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(Icons.close)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              Image.asset(
                AssetStrings.circledLocation,
                width: 204.w,
                height: 204.h,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                width: 300.w,
                height: 42.h,
                child: LongButton(
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
                    buttonType: ButtonType.outLinedButton,
                    buttonText: AppStrings.enterManualLocation,
                    iconImage: AssetStrings.landMarkIcon,
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
