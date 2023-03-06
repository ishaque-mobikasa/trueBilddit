import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/forgot_password/controllers_binding/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
