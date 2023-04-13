import 'package:truebildit/data/enums.dart';

class BankCardModel {
  final String cardNumber;
  final String cardHolderName;
  final String expiryDate;
  final String? cvvCode;
  final CardType cardType;
  BankCardModel(
      {required this.cardNumber,
      required this.cardType, 
      required this.cardHolderName,
      required this.expiryDate,
      this.cvvCode});
}
