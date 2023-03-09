import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
