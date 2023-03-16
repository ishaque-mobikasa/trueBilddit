import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/controllers_binding/address_controller.dart';

class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddressController());
  }
}