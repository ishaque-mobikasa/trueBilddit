import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/pages/payments/widgets/card_input_field.dart';

class AddNewBankCardModal extends StatelessWidget {
  const AddNewBankCardModal({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: Container(
          constraints: BoxConstraints(maxHeight: 413.h),
          color: Colors.white,
          child: Column(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 52.h,
                      width: size.width,
                      color: const Color(0xffF8F8F8),
                      child: Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Add New Card",
                                style: AppPaintings.customLargeText,
                              ),
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(Icons.close)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              CardInputField(
                hintText: "Card Number",
              ),
              SizedBox(height: 14.h),
            ],
          ),
        ),
      ),
    );
  }
}
