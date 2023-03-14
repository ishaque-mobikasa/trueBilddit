import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/add_substract_button.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final IconData? icon;
  final void Function()? onStarButtonClick;
  const ProductCard(
      {super.key, required this.product, this.icon, this.onStarButtonClick});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: const Border(),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        constraints:
            BoxConstraints(maxWidth: size.width, maxHeight: size.height * 0.13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Image.asset(
                          product.image,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    )
                  ],
                )),
            Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        child: Text(
                          product.title,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          AddSubstractButton(
                            count: 1,
                            borderColor: const Color(0xffECECEC),
                            onAddButtonClick: () => log("increased"),
                            onSubstractButtonClick: () => log("Reduced"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ShortButton(
                              buttonType: ButtonType.elevatedButton,
                              buttonText: "ADD",
                              onPressed: () {
                                log("Added to Cart");
                              })
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon != null
                    ? GestureDetector(
                        onTap: onStarButtonClick,
                        child: Icon(
                          icon,
                          size: 17,
                        ),
                      )
                    : const SizedBox(
                        height: 17,
                        width: 17,
                      ),
                Column(
                  children: [
                    Text(
                      "\u00A3${product.price.toString()}",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text(
                      "ex.VAT \u00A34.9",
                      style: TextStyle(fontSize: 8),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
