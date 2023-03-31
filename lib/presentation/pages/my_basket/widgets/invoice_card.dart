import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({
    super.key,
    this.margin,
    this.borderRadius,
    this.padding,
    required this.subTotal,
    required this.delivery,
    required this.vat,
  });
  final EdgeInsets? margin;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double subTotal;
  final double delivery;
  final double vat;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius ?? 10)),
        height: 162.h,
        margin: margin,
        width: size.width.w,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Subtotal",
                        style: AppPaintings.textSpanStyle
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                    ),
                    Flexible(
                      child: Text("£${subTotal.toStringAsFixed(2)}",
                          style: AppPaintings.textSpanStyle
                              .copyWith(fontWeight: FontWeight.w300)),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text("Delivery",
                          style: AppPaintings.textSpanStyle
                              .copyWith(fontWeight: FontWeight.w300)),
                    ),
                    Flexible(
                      child: Text("£${delivery.toStringAsFixed(2)}",
                          style: AppPaintings.textSpanStyle
                              .copyWith(fontWeight: FontWeight.w300)),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text("VAT (20%)",
                          style: AppPaintings.textSpanStyle
                              .copyWith(fontWeight: FontWeight.w300)),
                    ),
                    Flexible(
                      child: Text("£${vat.toStringAsFixed(2)}",
                          style: AppPaintings.textSpanStyle
                              .copyWith(fontWeight: FontWeight.w300)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 51.h,
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                border: BorderDirectional(
                    top: BorderSide(color: AppPaintings.dimWhite)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text("Total",
                        style: AppPaintings.textSpanStyle.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14.sp)),
                  ),
                  Flexible(
                    child: Text(
                        "£${(subTotal + delivery + vat).toStringAsFixed(2)}",
                        style: AppPaintings.textSpanStyle.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 14.sp)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
