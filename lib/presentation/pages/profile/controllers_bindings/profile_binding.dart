import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/profile/controllers_bindings/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
