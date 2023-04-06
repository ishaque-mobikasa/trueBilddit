import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/address_model.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    this.nameStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xff252525),
    ),
    this.margin,
    required this.addressData,
    this.padding = const EdgeInsets.symmetric(horizontal: 13),
  });
  final TextStyle nameStyle;
  final EdgeInsets? margin;
  final EdgeInsets padding;
  final AddressModel addressData;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: margin ?? EdgeInsets.zero,
      height: 92.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Slidable(
        endActionPane: ActionPane(motion: const DrawerMotion(), children: [
          SlidableAction(
            onPressed: (ctx) {
              log("message");
            },
            backgroundColor: const Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.edit,
          ),
          SlidableAction(
            spacing: 0,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10)),
            onPressed: (ctx) {},
            backgroundColor: const Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: CupertinoIcons.delete,
          )
        ]),
        child: Container(
          margin: margin ?? EdgeInsets.zero,
          height: 92.h,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Row(
                children: [
                  Flexible(
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
                          '\t\t${addressData.siteName}\t\t',
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
      ),
    );
  }
}
