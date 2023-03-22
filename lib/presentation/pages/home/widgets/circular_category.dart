import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/data/models/circular_item_model.dart';

class CircularCategoryItem extends StatelessWidget {
  final CircularItemModel circularItem;
  const CircularCategoryItem(
      {super.key, required, required this.circularItem, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        constraints: BoxConstraints(
            maxHeight: size.height * 0.15, maxWidth: size.width * 0.25),
        child: Column(children: [
          Flexible(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset(
                circularItem.image,
                width: size.width * 0.2,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            flex: 3,
            child: SizedBox(
              width: Get.width * 0.25,
              child: Text(
                circularItem.title,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
