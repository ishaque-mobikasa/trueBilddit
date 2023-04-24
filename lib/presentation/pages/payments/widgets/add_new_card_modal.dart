import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/payments/widgets/card_input_field.dart';

class AddNewBankCardModal extends StatelessWidget {
  const AddNewBankCardModal({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Form(
        key: formKey,
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
                SizedBox(height: 28.h),
                CardInputField(
                  cardFieldType: CardFileldType.cardNumber,
                  hintText: "Card Number*",
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 300.w,
                  child: CustomFormField(
                    hintText: "Card Holder Name*",
                    type: FieldType.normalInputField,
                    hintStyle: TextStyle(
                      color: AppPaintings.hintTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CardInputField(
                  cardFieldType: CardFileldType.expiryDate,
                  hintText: "Expiry Date (MM/YY)*",
                ),
                SizedBox(height: 10.h),
                CardInputField(
                  cardFieldType: CardFileldType.cvv,
                  hintText: "CVV*",
                ),
                SizedBox(height: 21.h),
                SizedBox(
                  width: 300.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 42.h,
                        width: 142.w,
                        child: ShortButton(
                            buttonType: ButtonType.elevatedButton,
                            buttonText: "ADD CARD",
                            onPressed: () {
                              log(formKey.currentState!.validate().toString());
                            }),
                      ),
                      SizedBox(
                        height: 42.h,
                        width: 142.w,
                        child: ShortButton(
                            buttonStyle: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(
                                            color: Colors.black)))),
                            buttonType: ButtonType.outLinedButton,
                            buttonText: "CANCEL",
                            onPressed: () {
                              Get.back();
                            }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
