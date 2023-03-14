import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/product_card.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/home/widgets/search_widget.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_bindings/search_controller.dart';

class SearchResultsView extends GetView<SearchController> {
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: Get.height * 0.18),
                  height: 20,
                  alignment: Alignment.center,
                  child: const Text("5234 Items Found")),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: Get.height * 0.06,
                    child: ShortButton(
                        buttonType: ButtonType.outLinedButton,
                        maxWidth: Get.width * 0.45,
                        buttonText: "Filter By",
                        iconImage: "assets/images/filter_icon.png",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                    child: ShortButton(
                        buttonType: ButtonType.outLinedButton,
                        maxWidth: Get.width * 0.45,
                        outlineButtonBorderColor: AppPaintings.kWhite,
                        buttonText: "Sort",
                        iconImage: "assets/images/sort_icon.png",
                        onPressed: () {}),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ProductCard(
                  icon: Icons.star_border,
                  onStarButtonClick: () => log("Clicked on star button"),
                  product: ProductModel(
                      id: "1",
                      title: "Yellow Armoured Cable MC Wire",
                      description: "Raaja",
                      price: 89.43,
                      image: "assets/images/wire.png")),
              ProductCard(
                  icon: Icons.star_border,
                  product: ProductModel(
                      id: "1",
                      title: "Yellow Armoured Cable MC Wire",
                      description: "Raaja",
                      price: 89.43,
                      image: "assets/images/wire.png")),
              ProductCard(
                  icon: Icons.star_border,
                  product: ProductModel(
                      id: "1",
                      title: "Yellow Armoured Cable MC Wire",
                      description: "Raaja",
                      price: 89.43,
                      image: "assets/images/wire.png")),
              ProductCard(
                  icon: Icons.star_border,
                  onStarButtonClick: () => log("Clicked on star button"),
                  product: ProductModel(
                      id: "1",
                      title: "Yellow Armoured Cable MC Wire",
                      description: "Raaja",
                      price: 89.43,
                      image: "assets/images/wire.png")),
              ProductCard(
                  icon: Icons.star_border,
                  product: ProductModel(
                      id: "1",
                      title: "Yellow Armoured Cable MC Wire",
                      description: "Raaja",
                      price: 89.43,
                      image: "assets/images/wire.png")),
              ProductCard(
                  icon: Icons.star_border,
                  product: ProductModel(
                      id: "1",
                      title: "Yellow Armoured Cable MC Wire",
                      description: "Raaja",
                      price: 89.43,
                      image: "assets/images/wire.png")),
            ],
          ),
        ),
        SizedBox(
            height: Get.height * 0.12,
            child: AppBar(
              centerTitle: true,
              title: ImageIcon(
                AssetImage(AssetStrings.bildItLogo),
                size: 100,
              ),
              leading: IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.back)),
              elevation: 0,
            )),
        Positioned(
            top: Get.height * 0.09,
            child: const CustomSearchField(
              hintText: "Cable MC wire",
            ))
      ],
    );
  }
}
