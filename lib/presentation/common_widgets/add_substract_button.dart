import 'package:flutter/material.dart';

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
    return Container(
      constraints: BoxConstraints(
        maxWidth: size.width * 0.25,
        maxHeight: size.height * 0.04,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
              onTap: onSubstractButtonClick,
              child: Container(
                  height: size.height * 0.05,
                  decoration:
                      BoxDecoration(border: Border.all(color: borderColor)),
                  child: const Icon(Icons.remove))),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              height: size.height * 0.05,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(color: borderColor))),
              child: Text(count.toString()),
            ),
          ),
          InkWell(
              onTap: onAddButtonClick,
              child: Container(
                  height: size.height * 0.05,
                  decoration:
                      BoxDecoration(border: Border.all(color: borderColor)),
                  child: const Icon(Icons.add))),
        ],
      ),
    );
  }
}
