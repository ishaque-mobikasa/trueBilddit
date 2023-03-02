import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_controller.dart';

class SplashScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
