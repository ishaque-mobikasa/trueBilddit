import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/address_model.dart';

class ShippingAddressCard extends StatelessWidget {
  const ShippingAddressCard({
    super.key,
    this.margin,
    required this.addressData,
    this.pading = const EdgeInsets.symmetric(horizontal: 13),
    this.isSelected = false,
  });

  final bool isSelected;
  final EdgeInsets? margin;
  final EdgeInsets pading;
  final AddressModel addressData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: margin ?? EdgeInsets.zero,
          height: 92.h,
          padding: pading,
          decoration: BoxDecoration(
              color: isSelected
                  ? AppPaintings.shippingCardSelectedColor
                  : AppPaintings.kWhite,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                  color: isSelected
                      ? AppPaintings.themeGreenColor
                      : AppPaintings.kWhite)),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          '${addressData.firstName} ${addressData.lastName}',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff252525),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 10.h),
                      Container(
                          alignment: Alignment.center,
                          height: 20.h,
                          decoration: BoxDecoration(
                              color: AppPaintings.disabledColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: size.width * 0.5),
                            child: Text(
                              '\t\t ${addressData.siteName} \t\t',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: AppPaintings.hintTextColor,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ],
                  )),
              Flexible(
                  flex: 4,
                  child: Text(
                    '${addressData.streetAddress} ${addressData.city}, ${addressData.county} ${addressData.phoneNumber},',
                    maxLines: 2,
                    style: AppPaintings.customSmallText.copyWith(height: 1.5),
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          ),
        ),
        Positioned(
            top: 13.h,
            right: 28.w,
            child: isSelected
                ? CircleAvatar(
                    backgroundColor: AppPaintings.themeGreenColor,
                    radius: 11.r,
                    child: CircleAvatar(
                      backgroundColor: AppPaintings.kWhite,
                      radius: 10.r,
                      child: Icon(
                        Icons.check,
                        size: 15.r,
                        color: AppPaintings.themeGreenColor,
                      ),
                    ),
                  )
                : const SizedBox.shrink())
      ],
    );
  }
}
