import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/orders/order_history/order_history_controller_binding/order_history_controller.dart';
import 'package:truebildit/presentation/pages/orders/order_history/widgets/order_history_card.dart';

class OrderHistoryView extends GetView<OrderHistoryController> {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OrderHistoryCard(
        orderAmount: 450,
        orderId: '345123',
        orderDate: DateTime(1900),
      ),
    );
  }
}
