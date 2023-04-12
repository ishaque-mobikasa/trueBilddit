import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/payments/controller_binding/payment_controller.dart';
import 'package:truebildit/presentation/pages/payments/widgets/bank_card.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BankCard(
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          isSelected: false,
        )
      ],
    );
  }
}
