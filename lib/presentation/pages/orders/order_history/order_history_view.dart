import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/data/models/address_model.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/pages/orders/order_history/order_history_controller_binding/order_history_controller.dart';
import 'package:truebildit/presentation/pages/orders/order_history/widgets/order_history_card.dart';

class OrderHistoryView extends GetView<OrderHistoryController> {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 113.h, left: 15.w, right: 15.w),
          child: Column(
            children: List.generate(
                5,
                (index) => OrderHistoryCard(
                      addressModel: AddressModel(
                          firstName: "John",
                          lastName: "Doe",
                          streetAddress: "Vicarage Rd",
                          city: "Stourbridge West",
                          county: "Midlands DY8 4JB",
                          siteName: "Site Name",
                          phoneNumber: "020 7836 0004"),
                      margin: EdgeInsets.only(bottom: 10.h),
                      padding: EdgeInsets.only(
                        top: 13.h,
                        left: 12.w,
                        right: 11.w,
                      ),
                      orderAmount: 450,
                      orderId: '345123',
                      orderDate: DateTime.now(),
                    )),
          ),
        ),
        const CustomAppBar(
          title: 'Order History',
        ),
      ],
    );
  }
}
