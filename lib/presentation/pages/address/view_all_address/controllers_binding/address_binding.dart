import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/controllers_binding/address_controller.dart';

class ViewAllAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewAllAddressController());
  }
}