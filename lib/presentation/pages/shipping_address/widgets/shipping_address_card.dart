import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/address_model.dart';

class ShippingAddressCard extends StatelessWidget {
  const ShippingAddressCard({
    super.key,
    this.nameStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xff252525),
    ),
    this.margin,
    required this.addressData,
    this.pading = const EdgeInsets.symmetric(horizontal: 13),
    this.isSelected = false,
  });

  final TextStyle nameStyle;
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
          margin: margin ??
              EdgeInsets.only(
                bottom: 11.h,
                right: 15.w,
                left: 15.w,
              ),
          height: 92.h,
          padding: pading,
          width: 345.w,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Text(
                      '${addressData.firstName} ${addressData.lastName}',
                      style: nameStyle,
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
                        constraints: BoxConstraints(maxWidth: size.width * 0.5),
                        child: Text(
                          ' ${addressData.siteName} ',
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
              Expanded(
                  child: Text(
                '${addressData.streetAddress} ${addressData.city}, ${addressData.county} ${addressData.phoneNumber},',
                maxLines: 2,
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
                    radius: 10.5.r,
                    backgroundColor: AppPaintings.themeGreenColor,
                    child: SizedBox(
                      height: 18.h,
                      width: 18.w,
                      child: Checkbox(
                          side: const BorderSide()
                              .copyWith(color: AppPaintings.kWhite),
                          checkColor: AppPaintings.themeGreenColor,
                          activeColor: AppPaintings.kWhite,
                          shape: const CircleBorder(),
                          value: true,
                          onChanged: (value) {}),
                    ),
                  )
                : const SizedBox.shrink())
      ],
    );
  }
}
