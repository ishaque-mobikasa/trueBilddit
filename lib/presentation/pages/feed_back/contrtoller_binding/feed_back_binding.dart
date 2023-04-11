import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/feed_back/contrtoller_binding/feed_back_controller.dart';

class FeedBackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedBackController());
  }
}
