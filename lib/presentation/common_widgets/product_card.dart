import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:truebildit/data/models/product_model.dart';
import 'package:truebildit/presentation/common_widgets/add_substract_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';

class MyCustomWidget extends StatelessWidget {
  final ProductModel product;
  final IconData? icon;
  const MyCustomWidget({super.key, required this.product, this.icon});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(10),
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
                          height: 80,
                          width: 80,
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
                          style: const TextStyle(fontSize: 14),
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
                    ? Icon(
                        icon,
                        size: 17,
                      )
                    : const SizedBox(
                        height: 17,
                        width: 17,
                      ),
                Column(
                  children: [
                    Text(
                      "\u00A3${product.price.toString()}",
                      style: const TextStyle(fontSize: 12),
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
    )));
  }
}
