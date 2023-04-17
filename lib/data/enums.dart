import 'package:truebildit/app/utils/strings.dart';

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

enum PaymentMethod { cash, debitCard, creditCard, mobileMoney, paypal,verve }

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
        case PaymentMethod.verve:
        return "Verve";
      default:
        return "UnPaid";
    }
  }
}

enum CardType { visa, mastercard, amex, discover, googlepay, applepay ,verve,others}

extension GetCardType on CardType {
  String get getCardName {
    switch (this) {
      case CardType.visa:
        return AssetStrings.visaImage;
      case CardType.mastercard:
        return AssetStrings.masterCardImage;
      case CardType.amex:
        return AssetStrings.americanExpressImage;
      case CardType.discover:
        return AssetStrings.discoverCardImage;
      case CardType.googlepay:
        return AssetStrings.googlePayImage;
      case CardType.applepay:
        return AssetStrings.applePayImage;
      default:
        return AssetStrings.googlePayImage;
    }
  }
}

enum DeliveryScheduleType { normal, scheduled }
