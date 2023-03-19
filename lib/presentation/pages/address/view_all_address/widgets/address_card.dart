import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

class AddressCard extends StatelessWidget {
  const AddressCard(
      {this.nameStyle = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xff252525),
      ),
      required this.address,
      required this.name,
      this.isDefault = false,
      this.margin = const EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 10,
        left: 10,
      ),
      super.key,
      this.pading = const EdgeInsets.symmetric(horizontal: 20),
      required this.addressType});
  final bool? isDefault;
  final String addressType;
  final TextStyle nameStyle;
  final String name;
  final String address;
  final EdgeInsets margin;
  final EdgeInsets pading;

  @override
  Widget build(BuildContext context) {
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
                        flex: 2,
                        child: Text(
                          name,
                          style: nameStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        flex: 1,
                        child: ChoiceChip(
                          backgroundColor: AppPaintings.disabledColor,
                          label: Text(
                            addressType,
                            style:
                                TextStyle(color: AppPaintings.themeLightBlack),
                          ),
                          selected: false,
                          onSelected: (bool selected) {},
                        ),
                      ),
                      const SizedBox(width: 10),
                      isDefault!
                          ? ChoiceChip(
                              backgroundColor: AppPaintings.themeGreenColor,
                              label: const Text(
                                "Default",
                                style: TextStyle(color: Colors.white),
                              ),
                              onSelected: (value) {},
                              selected: false)
                          : const SizedBox(width: 0, height: 0),
                    ],
                  )),
                  Expanded(
                      child: Text(
                    address,
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
