
import 'package:truebildit/data/enums.dart';

class OrderModel {
  String id;
  DateTime orderDate;
  DateTime deliveryDate;
  double orderAmount;
  DeliveryStatus deliveryStatus;
  PaymentMethod paymentMethod;
  OrderModel({
    required this.id,
    required this.orderDate,
    required this.deliveryDate,
    required this.orderAmount,
    required this.deliveryStatus,
    required this.paymentMethod,
  });
}
