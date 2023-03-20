import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/login/otp_login/controller_binding/otp_login_controller.dart';

class OTPLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPLoginController>(() => OTPLoginController());
  }
}