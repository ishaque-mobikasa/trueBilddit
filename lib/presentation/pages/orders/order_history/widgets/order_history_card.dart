import 'package:flutter/material.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard(
      {this.orderDate,
      required this.orderAmount,
      required this.orderId,
      super.key});
  final String orderId;
  final DateTime? orderDate;
  final double orderAmount;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.03, vertical: size.width * 0.03),
        constraints:
            BoxConstraints(maxWidth: size.width, maxHeight: size.height * 0.22),
        child: Column(children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03, vertical: size.width * 0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(
                            constraints: BoxConstraints(
                                maxWidth: size.width,
                                maxHeight: size.height * 0.08),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'Ordrer : ',
                                  style: AppPaintings.textSpanStyle),
                              TextSpan(
                                  text: '#345123',
                                  style: AppPaintings.textSpanStyle.copyWith(
                                      color: AppPaintings.themeGreenColor)),
                            ]))),
                      ),
                      Flexible(
                          flex: 2,
                          child: Text(
                            "Ordered on: Mon 12Dec, 2022",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppPaintings.themeBlack,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                          ))
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      Container(
                          constraints: BoxConstraints(
                              maxWidth: size.width,
                              maxHeight: size.height * 0.05),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Order Amount: ',
                                style: AppPaintings.textSpanStyle),
                            TextSpan(
                                text: '£450.00',
                                style: AppPaintings.textSpanStyle.copyWith(
                                    color: AppPaintings.themeGreenColor)),
                          ]))),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: AppPaintings.dimWhite,
            height: 5,
            thickness: 1,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03, vertical: size.width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Flexible(
                          child: Text(
                        "John Doe",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: AppPaintings.themeBlack,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      )),
                      Container(
                          height: 20,
                          width: 70,
                          margin: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                              color: AppPaintings.disabledColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Site Name",
                              style: TextStyle(
                                  color: AppPaintings.hintTextColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          ))
                    ],
                  ),
                  const Flexible(
                    child: Text(
                      "Vicarage Rd Stourbridge West, Midlands DY8 4JB United Kingdom, 020 7836 0004",
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
