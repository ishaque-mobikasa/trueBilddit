import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:truebildit/data/models/circular_item_model.dart';

class CircularCategoryItem extends StatelessWidget {
  final CircularItemModel circularItem;
  const CircularCategoryItem(
      {super.key, required this.circularItem, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 126.h,
        constraints: const BoxConstraints(),
        child: Column(children: [
          Container(
              height: 90.h,
              width: 90.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  circularItem.image,
                  fit: BoxFit.contain,
                  width: 45.w,
                  height: 52.67.h,
                ),
              )),
          SizedBox(
            height: 8.h,
          ),
          Flexible(
            child: SizedBox(
              height: 32.h,
              width: 80.w,
              child: Text(
                circularItem.title,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
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
