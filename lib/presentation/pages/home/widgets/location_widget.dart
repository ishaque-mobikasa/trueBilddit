import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget(
      {super.key, required this.locationName, required this.onTap});
  final String locationName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(width: 15.w),
          Row(
            children: [
              Image.asset(
                AssetStrings.landMarkIconOutlined,
                height: 15.h,
                width: 11.w,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 5.w),
              SizedBox(
                width: 73.w,
                height: 15.h,
                child: Text(
                  locationName,
                  maxLines: 1,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppPaintings.kWhite),
                ),
              ),
              SizedBox(width: 6.w),
              Image.asset(
                AssetStrings.arrowDownIcon,
                height: 9.h,
                width: 9.w,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
