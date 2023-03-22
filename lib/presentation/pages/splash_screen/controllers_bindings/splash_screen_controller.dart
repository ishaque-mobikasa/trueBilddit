import 'package:get/get.dart';
import 'package:truebildit/app/routes/routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.offNamed(Routes.dashBoardView);
      },
    );
    super.onInit();
  }
}
