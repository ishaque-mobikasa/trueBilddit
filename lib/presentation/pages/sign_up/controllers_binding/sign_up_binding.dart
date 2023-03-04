import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
