import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/product_card.dart';
import 'package:truebildit/presentation/pages/my_list/selected_list_contents/selected_list_controller_binding/selected_list_controller.dart';

class SelectedListView extends GetView<SelectedListController> {
  const SelectedListView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppPaintings.scaffoldBackgroundDimmed,
        appBar: AppBar(
          backgroundColor: AppPaintings.themeGreenColor,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Get.back(),
          ),
          title: Text(
            args.toString(),
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            GestureDetector(
              onTap: () => log("Clicked on edit icon"),
              child: ImageIcon(
                AssetImage(AssetStrings.editIcon),
                color: AppPaintings.kWhite,
                size: 23,
              ),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => log("Clicked on delete icon"),
              child: ImageIcon(
                AssetImage(AssetStrings.deleteIcon),
                color: AppPaintings.kWhite,
                size: 23,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                    flex: 3,
                    child: Text(
                      "10 items Available",
                      style: AppPaintings.customSmallText
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                Flexible(
                  child: CupertinoButton(
                      child: Text(
                        "CLEAR ALL",
                        style: TextStyle(
                            color: AppPaintings.appRedColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        log("Cleared all items");
                      }),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      children: List.generate(
                    10,
                    (index) => ProductCard(
                        iconColor: const Color(0xffB7B7B7),
                        icon: CupertinoIcons.delete,
                        onStarButtonClick: () =>
                            log("Clicked on Right icon button"),
                        product: ProductModel(
                            id: "1",
                            title: "Yellow Armoured Cable MC Wire",
                            description: "Raaja",
                            price: 89.43,
                            image: "assets/images/wire.png")),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
