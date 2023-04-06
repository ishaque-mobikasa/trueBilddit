class AddressModel {
  String firstName;
  String lastName;
  String phoneNumber;
  String streetAddress;
  String city;
  String county;
  String siteName;
  String? companyName;
  String? country;
  AddressModel({
    required this.firstName,
    required this.lastName,
   
    required this.streetAddress,
    required this.city,
    required this.county,
    required this.siteName,
    required this.phoneNumber,
    this.companyName = "",
    this.country = "United Kingdom",
  });
}
