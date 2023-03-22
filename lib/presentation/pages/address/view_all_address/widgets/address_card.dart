import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/models/address_model.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    this.nameStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xff252525),
    ),
    this.margin = const EdgeInsets.only(
      top: 8,
      bottom: 8,
      right: 10,
      left: 10,
    ),
    super.key,
    required this.addressData,
    this.pading = const EdgeInsets.symmetric(horizontal: 20),
  });

  final TextStyle nameStyle;

  final EdgeInsets margin;
  final EdgeInsets pading;
  final AddressModel addressData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: Get.width,
          child: Slidable(
            endActionPane: ActionPane(motion: const ScrollMotion(), children: [
              SlidableAction(
                flex: 1,
                onPressed: (ctx) {
                  log("message");
                },
                backgroundColor: const Color(0xFF7BC043),
                foregroundColor: Colors.white,
                icon: Icons.archive,
              ),
              SlidableAction(
                flex: 1,
                onPressed: (ctx) {},
                backgroundColor: const Color(0xFF7BC043),
                foregroundColor: Colors.white,
                icon: CupertinoIcons.delete,
              )
            ]),
            child: Container(
              margin: margin,
              height: Get.height * 0.12,
              padding: pading,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                      const SizedBox(width: 10),
                      Container(
                          alignment: Alignment.center,
                          height: 20,
                          decoration: BoxDecoration(
                              color: AppPaintings.disabledColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: size.width * 0.5),
                            child: Text(
                              ' ${addressData.siteName} ',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                  color: AppPaintings.hintTextColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ],
                  )
                  
                  ),
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
        ));
  }
}
