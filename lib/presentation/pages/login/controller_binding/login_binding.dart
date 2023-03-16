import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/login/controller_binding/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}