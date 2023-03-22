class AddressModel {
  String firstName;
  String lastName;
  String phoneNumber;
  String streetAddress;
  String city;
  String county;
  String siteName;
  String? companyName;
  AddressModel({
    required this.firstName,
    required this.lastName,
    this.companyName = "",
    required this.streetAddress,
    required this.city,
    required this.county,
    required this.siteName,
    required this.phoneNumber,
  });
}
