import 'package:flutter/material.dart';

class CircularCategoryItem extends StatelessWidget {
  final String image;
  const CircularCategoryItem(
      {super.key, required this.image, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        constraints: BoxConstraints(
            maxHeight: size.height * 0.16, maxWidth: size.width * 0.26),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    image,
                    width: size.width * 0.25,
                  ),
                ),
              ),
              Flexible(
                  child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ))
            ]),
      ),
    );
  }
}
