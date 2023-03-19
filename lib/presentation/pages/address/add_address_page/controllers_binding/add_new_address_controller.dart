import 'package:get/get.dart';

class AddNewAddressController extends GetxController {
  RxString selectedCountry = "".obs;
  RxString selectedState = "".obs;
  RxString selectedCity = "".obs;

  void changeCountry(String country) {
    selectedCountry.value = country;
  }

  void changeState(String country) {
    selectedState.value = country;
  }

  void changeCity(String country) {
    selectedCity.value = country;
  }
}
