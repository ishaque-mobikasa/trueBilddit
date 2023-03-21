import 'package:get/get.dart';
import 'selected_list_controller.dart';

class SelectedListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectedListController>(() => SelectedListController());
  }
}