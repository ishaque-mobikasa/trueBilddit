import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/address_model.dart';

class OrderSummaryAddressCard extends StatelessWidget {
  const OrderSummaryAddressCard({
    super.key,
    this.nameStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(0xff252525),
    ),
    this.margin,
    required this.addressData,
    this.padding = const EdgeInsets.symmetric(horizontal: 13),
    this.isSelected = false,
    this.onChangeButtonTap,
  });

  final TextStyle nameStyle;
  final bool isSelected;
  final EdgeInsets? margin;
  final EdgeInsets padding;
  final AddressModel addressData;
  final void Function()? onChangeButtonTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: margin ?? EdgeInsets.zero,
          height: 92.h,
          padding: padding,
          decoration: BoxDecoration(
              color: isSelected
                  ? AppPaintings.shippingCardSelectedColor
                  : AppPaintings.kWhite,
              borderRadius: BorderRadius.circular(10.r)),
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
              Expanded(
                  child: SizedBox(
                child: Text(
                  '${addressData.streetAddress} ${addressData.city}, ${addressData.county}\n${addressData.phoneNumber},',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppPaintings.customSmallText.copyWith(height: 1.7),
                ),
              )),
            ],
          ),
        ),
        Positioned(
            top: 13.h,
            right: 28.w,
            child: GestureDetector(
              onTap: onChangeButtonTap,
              child: Container(
                  alignment: Alignment.center,
                  height: 22.h,
                  width: 56.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppPaintings.dimWhite),
                      color: AppPaintings.kWhite,
                      borderRadius: BorderRadius.circular(1.r)),
                  child: Text(
                    "CHANGE",
                    overflow: TextOverflow.ellipsis,
                    style: AppPaintings.customSmallText.copyWith(
                        fontSize: 10.sp, color: AppPaintings.themeGreenColor),
                  )),
            ))
      ],
    );
  }
}
