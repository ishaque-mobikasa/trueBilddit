import 'package:get/get.dart';

import 'sub_category_items_view_binding.dart';

class SubcategoryItemsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubcategoryItemsController());
  }
}
