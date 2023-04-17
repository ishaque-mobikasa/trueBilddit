import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utility_functions/dummy_list.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/data/models/card_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';
import 'package:truebildit/presentation/pages/payments/controller_binding/payment_controller.dart';
import 'package:truebildit/presentation/pages/payments/widgets/add_new_card_modal.dart';
import 'package:truebildit/presentation/pages/payments/widgets/bank_card.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 103.h,
              ),
              SizedBox(
                width: 345.w,
                child: SizedBox(
                  height: 50.h,
                  child: ShortButton(
                      buttonTextStyle: TextStyle(
                          fontSize: 14.sp,
                          color: AppPaintings.themeGreenColor,
                          fontWeight: FontWeight.w500),
                      backGroundColor: const Color.fromARGB(255, 255, 255, 255),
                      maxWidth: 345.w,
                      buttonType: ButtonType.outLinedButton,
                      outlineButtonBorderColor: AppPaintings.kWhite,
                      buttonText: "+ Add New DEBIT/CREDIT CARD",
                      onPressed: () {
                        Get.bottomSheet(const AddNewBankCardModal());
                      }),
                ),
              ),
              SizedBox(
                height: 11.h,
              ),
              Obx(
                () => Column(
                  children: List.generate(
                    4,
                    (index) => BankCardTile(
                      margin: EdgeInsets.only(
                          bottom: 10.h, left: 15.w, right: 15.w),
                      onTap: (bankCard) => controller.onCardSelected(index),
                      bankCard: dummyCards[index],
                      autovalidateMode: AutovalidateMode.always,
                      cardNumber: "1234567890123456",
                      isSelected: controller.selectedCardIndex.value == index,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: Get.width.w,
                padding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                ),
                height: 25.h,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Other Payment Methods",
                  style: AppPaintings.customLargeText.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              BankCardTile(
                  margin:
                      EdgeInsets.only(bottom: 10.h, left: 15.w, right: 15.w),
                  onTap: (bankCard) => log(bankCard.cardHolderName),
                  bankCard: BankCardModel(
                    cardNumber: "1234567890123456",
                    cardType: CardType.googlepay,
                    expiryDate: "12/22",
                    cardHolderName: "Richard John",
                    cvvCode: "123",
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  cardNumber: "1234567890123456",
                  isSelected: false),
              Platform.isIOS
                  ? BankCardTile(
                      margin: EdgeInsets.only(
                          bottom: 10.h, left: 15.w, right: 15.w),
                      onTap: (bankCard) => log(bankCard.cardHolderName),
                      bankCard: BankCardModel(
                        cardNumber: "1234567890123456",
                        cardType: CardType.applepay,
                        expiryDate: "12/22",
                        cardHolderName: "Richard John",
                        cvvCode: "123",
                      ),
                      autovalidateMode: AutovalidateMode.always,
                      cardNumber: "1234567890123456",
                      isSelected: false)
                  : const SizedBox.shrink(),
              SizedBox(
                height: 135.h,
              ),
              SizedBox(
                  height: 42.h,
                  width: 345.w,
                  child: LongButton(
                      buttonType: ButtonType.elevatedButton,
                      buttonText: "PLACE YOUR ORDER",
                      onPressed: () async {
                        await Get.to(() {});
                      })),
            ],
          ),
        ),
        const CustomAppBar(
          title: "Payment",
        ),
      ],
    );
  }
}
