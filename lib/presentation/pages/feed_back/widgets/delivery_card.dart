import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/data/models/order_model.dart';

class DeliveryCard extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final OrderModel order;

  const DeliveryCard(
      {super.key, this.margin, this.padding, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ??
          EdgeInsets.only(
            left: 15.w,
            right: 12.w,
            top: 14.h,
            bottom: 13.h,
          ),
      height: 95.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1.r,
                blurRadius: 5.r,
                offset: const Offset(0, 3)),
          ],
          color: AppPaintings.kWhite,
          borderRadius: BorderRadius.only( 
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: RichText(
                      text: TextSpan(children: [
                TextSpan(
                    text: 'Order : ',
                    style: AppPaintings.textSpanStyle
                        .copyWith(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: '#${order.id}',
                    style: AppPaintings.textSpanStyle
                        .copyWith(color: AppPaintings.themeGreenColor)),
              ]))),
              Flexible(
                  flex: 2,
                  child: RichText(
                    text: TextSpan(
                      text: "Ordered on: ",
                      style: AppPaintings.customSmallText.copyWith(
                          color: AppPaintings.themeBlack,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: DateFormat('E d MMM, y')
                                .format(order.orderDate),
                            style: AppPaintings.textSpanStyle.copyWith(
                                color: AppPaintings.themeBlack,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: RichText(
                text: TextSpan(
                  text: "Status :  ",
                  style: AppPaintings.customSmallText.copyWith(
                      color: AppPaintings.themeBlack,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: order.deliveryStatus.getStatus,
                        style: AppPaintings.textSpanStyle.copyWith(
                            color: AppPaintings.themeBlack,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              )),
              Flexible(
                  flex: 2,
                  child: RichText(
                    text: TextSpan(
                      text: "Delivered on: ",
                      style: AppPaintings.customSmallText.copyWith(
                          color: AppPaintings.themeBlack,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: DateFormat('E d MMM, y')
                                .format(order.deliveryDate),
                            style: AppPaintings.textSpanStyle.copyWith(
                                color: AppPaintings.themeBlack,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  )),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  "Payement Method : ",
                  style: AppPaintings.customSmallText.copyWith(
                      color: AppPaintings.themeBlack,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Flexible(
                child: Text(
                  order.paymentMethod.getName,
                  style: AppPaintings.customSmallText.copyWith(
                    color: AppPaintings.themeBlack,
                    fontSize: 11.sp,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
