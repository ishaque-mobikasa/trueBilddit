import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/locatio_request_controller.dart';

class LocationRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationRequestController());
  }
}
