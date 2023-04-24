import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/data/enums.dart';
import 'package:truebildit/data/models/address_model.dart';
import 'package:truebildit/data/models/card_model.dart';
import 'package:truebildit/data/models/circular_item_model.dart';

List<CircularItemModel> homeItems = [
  CircularItemModel(
      image: AssetStrings.electrical, title: "Electrical& Lighting"),
  CircularItemModel(image: AssetStrings.plumbing, title: "Plumbing& Heating"),
  CircularItemModel(image: AssetStrings.fixing, title: "Fixings& Support"),
  CircularItemModel(image: AssetStrings.tools, title: "Tools & Equipment"),
  CircularItemModel(image: AssetStrings.sealants, title: "Sealants& Adhesives"),
  CircularItemModel(
      image: AssetStrings.paintings, title: "Painting &Decorating"),
  CircularItemModel(
      image: AssetStrings.ironMongery, title: "General Construction"),
  CircularItemModel(
      image: AssetStrings.fireAndSecurity, title: "Fire& \nSecurity"),
  CircularItemModel(
      image: AssetStrings.gardeningIcon, title: "Outdoor & Gardening"),
];
List<BankCardModel> dummyCards = [
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.mastercard,
    expiryDate: "12/22",
    cardHolderName: "Richard John",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.visa,
    expiryDate: "12/22",
    cardHolderName: "John Doe",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.mastercard,
    expiryDate: "12/22",
    cardHolderName: "kallen Vasu",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890121234",
    cardType: CardType.visa,
    expiryDate: "12/22",
    cardHolderName: "Ishaque K",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.mastercard,
    expiryDate: "12/22",
    cardHolderName: "Richard John",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.visa,
    expiryDate: "12/22",
    cardHolderName: "John Doe",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.mastercard,
    expiryDate: "12/22",
    cardHolderName: "kallen Vasu",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890121234",
    cardType: CardType.visa,
    expiryDate: "12/22",
    cardHolderName: "Ishaque K",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890123456",
    cardType: CardType.mastercard,
    expiryDate: "12/22",
    cardHolderName: "kallen Vasu",
    cvvCode: "123",
  ),
  BankCardModel(
    cardNumber: "1234567890121234",
    cardType: CardType.visa,
    expiryDate: "12/22",
    cardHolderName: "Ishaque K",
    cvvCode: "123",
  ),
];
List<AddressModel> dummyAddresses = [
  AddressModel(
      firstName: "Richard",
      lastName: "George",
      phoneNumber: "+9198765443210",
      streetAddress: "36 north near st. street",
      city: "Netherton",
      county: "DD9 7SU",
      siteName: "Site Name"),
  AddressModel(
      firstName: "John",
      lastName: " Micheal",
      phoneNumber: "+9198765443210",
      streetAddress: "36 north near st. street",
      city: "Netherton",
      county: "DD9 7SU",
      siteName: "Site Name"),
  AddressModel(
      firstName: "Richard",
      lastName: "George",
      phoneNumber: "+9198765443210",
      streetAddress: "36 north near st. street",
      city: "Netherton",
      county: "DD9 7SU",
      siteName: "Site Name"),
  AddressModel(
      firstName: "John",
      lastName: " Micheal",
      phoneNumber: "+9198765443210",
      streetAddress: "36 north near st. street",
      city: "Netherton",
      county: "DD9 7SU",
      siteName: "Site Name"),
  AddressModel(
      firstName: "John",
      lastName: " Micheal",
      phoneNumber: "+9198765443210",
      streetAddress: "36 north near st. street",
      city: "Netherton",
      county: "DD9 7SU",
      siteName: "Site Name"),
  AddressModel(
      firstName: "John",
      lastName: " Micheal",
      phoneNumber: "+9198765443210",
      streetAddress: "42 st.noth ",
      city: "Netherton",
      county: "DD9 7SU",
      siteName: "Site Name"),
];
