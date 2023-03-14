import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_bindings/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchController());
  }
}
