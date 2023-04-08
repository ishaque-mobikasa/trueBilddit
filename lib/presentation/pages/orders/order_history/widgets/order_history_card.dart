import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/address_model.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard(
      {required this.orderDate,
      this.margin,
      this.padding,
      required this.orderAmount,
      required this.orderId,
      super.key,
      required this.addressModel});
  final String orderId;
  final DateTime orderDate;
  final double orderAmount;
  final AddressModel addressModel;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: padding,
        margin: margin,
        height: 146.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        constraints: BoxConstraints(maxWidth: size.width.w, maxHeight: 146.h),
        child: Column(children: [
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: 18.h,
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Order : ',
                                style: AppPaintings.textSpanStyle
                                    .copyWith(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '#$orderId',
                                style: AppPaintings.textSpanStyle.copyWith(
                                    color: AppPaintings.themeGreenColor)),
                          ]))),
                    ),
                    Flexible(
                        child: Container(
                            alignment: Alignment.centerRight,
                            height: 18.h,
                            child: RichText(
                                maxLines: 1,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Ordered on: ',
                                      style: AppPaintings.textSpanStyle
                                          .copyWith(
                                              color: AppPaintings.themeBlack,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: DateFormat('E d MMM, y')
                                          .format(orderDate),
                                      style: AppPaintings.textSpanStyle
                                          .copyWith(
                                              color: AppPaintings.themeBlack,
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400)),
                                ]))))
                  ],
                ),
                SizedBox(height: 4.h),
                Container(
                    alignment: Alignment.centerLeft,
                    height: 18.h,
                    child: RichText(
                        maxLines: 1,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Order Amount: ',
                              style: AppPaintings.textSpanStyle
                                  .copyWith(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '£${orderAmount.toStringAsFixed(2)}',
                              style: AppPaintings.textSpanStyle.copyWith(
                                  color: AppPaintings.themeGreenColor)),
                        ]))),
                SizedBox(
                  height: 11.h,
                ),
                Divider(
                  color: AppPaintings.dimWhite,
                  height: 2,
                  thickness: 1,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Flexible(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                              child: Text(
                            "${addressModel.firstName} ${addressModel.lastName}",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppPaintings.themeBlack,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          )),
                          Container(
                              height: 20.h,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 5.w),
                              decoration: BoxDecoration(
                                  color: AppPaintings.disabledColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: 100.w,
                                ),
                                child: Text(
                                  '\t\t${addressModel.siteName}\t\t',
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: AppPaintings.hintTextColor,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Flexible(
                        child: Text(
                          "${addressModel.streetAddress} ${addressModel.city}, ${addressModel.county} ${addressModel.country}, ${addressModel.phoneNumber}",
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
