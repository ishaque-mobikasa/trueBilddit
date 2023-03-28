import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSubstractButton extends StatelessWidget {
  final int count;
  final void Function()? onSubstractButtonClick;
  final void Function()? onAddButtonClick;
  final Color borderColor;
  const AddSubstractButton(
      {super.key,
      this.borderColor = Colors.black,
      required this.count,
      this.onSubstractButtonClick,
      this.onAddButtonClick});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: 74.w,
      height: 24.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: InkWell(
                onTap: onSubstractButtonClick,
                child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: borderColor)),
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                    ))),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              width: 32.w,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(color: borderColor))),
              child: Text(count.toString()),
            ),
          ),
          Flexible(
            child: InkWell(
                onTap: onAddButtonClick,
                child: Container(
                    constraints: BoxConstraints(minWidth: 20.w),
                    decoration:
                        BoxDecoration(border: Border.all(color: borderColor)),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                    ))),
          ),
        ],
      ),
    );
  }
}
