import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/controllers_binding/add_new_address_controller.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_controller.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';
import 'package:truebildit/presentation/pages/login/controller_binding/login_controller.dart';
import 'package:truebildit/presentation/pages/profilew/controllers_bindings/profile_controller.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_bindings/search_controller.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AddNewAddressController());
    Get.put(DashBoardController());
  }
}
