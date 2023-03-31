import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/my_basket/controller_binding/basket_controller.dart';

class MyBasketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBasketController());
  }
}