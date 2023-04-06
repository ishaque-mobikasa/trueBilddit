import 'package:get/get.dart';

class AddNewAddressController extends GetxController {
  RxBool isDefaultAddress = false.obs;

  void toggleDefaultAddress() {
    isDefaultAddress.value = !isDefaultAddress.value;
  }
}
