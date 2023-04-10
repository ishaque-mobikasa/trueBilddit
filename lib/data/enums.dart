enum DeliveryStatus {
  pending,
  delivered,
}

extension DeliveryStatusExtension on DeliveryStatus {
  String get getStatus {
    switch (this) {
      case DeliveryStatus.pending:
        return "Pending";
      case DeliveryStatus.delivered:
        return "Delivered";
      default:
        return "UnPaid";
    }
  }
}

enum PaymentMethod { cash, debitCard, creditCard, mobileMoney, paypal }

extension PaymentMethodExtension on PaymentMethod {
  String get getName {
    switch (this) {
      case PaymentMethod.cash:
        return "Cash on Delivery";
      case PaymentMethod.debitCard:
        return "Debit Card";
      case PaymentMethod.creditCard:
        return "Credit Card";
      case PaymentMethod.mobileMoney:
        return "Mobile Money";
      case PaymentMethod.paypal:
        return "PayPal";
      default:
        return "UnPaid";
    }
  }
}
