import 'package:get/get.dart';

class SearchController extends GetxController {
  final RxBool _isSelected = true.obs;

  void onClick(bool isFilterSelected) {
    if (isSelected != isFilterSelected) {
      _isSelected.value = isFilterSelected;
    }
  }

  bool get isSelected => _isSelected.value;
}
