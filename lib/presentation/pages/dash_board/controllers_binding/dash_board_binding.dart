import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_controller.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.put(DashBoardController());
  }
}
