import 'package:get/get.dart';

import 'otp_verification_controller.dart';

class OTPverificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPverificationController>(() => OTPverificationController());
  }
}
