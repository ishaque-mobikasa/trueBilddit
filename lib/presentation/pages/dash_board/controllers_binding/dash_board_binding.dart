import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/controllers_binding/add_new_address_controller.dart';
import 'package:truebildit/presentation/pages/change_password/controllers_binding/change_password_controller.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_controller.dart';
import 'package:truebildit/presentation/pages/feed_back/contrtoller_binding/feed_back_controller.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';
import 'package:truebildit/presentation/pages/login/otp_login/controller_binding/otp_login_controller.dart';
import 'package:truebildit/presentation/pages/product_description/controller_binding/pdp_controller.dart';
import 'package:truebildit/presentation/pages/profile/controllers_bindings/profile_controller.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_binding/search_controller.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => OTPLoginController());
    Get.lazyPut(() => AddNewAddressController());
    Get.lazyPut(() => ChangePasswordController());
    Get.lazyPut(() => PDPcontroller());
    Get.lazyPut(() => FeedBackController());
    Get.put(DashBoardController());
  }
}
