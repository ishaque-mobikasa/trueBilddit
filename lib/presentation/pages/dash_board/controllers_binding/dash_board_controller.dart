import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/address_view.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/my_list/my_list_view.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/sub_category_view.dart';

class DashBoardController extends GetxController {
  final Rx<Color> _scaffoldBackground = Colors.white.withAlpha(245).obs;
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [
    const HomeView(),
    const SubCategoryView(),
    const MyListView(),
    const ViewAllAddressView()
  ];
  Color getScaffoldColor() => _scaffoldBackground.value;

  Widget get currentPage => pages[selectedIndex.value];
  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;

      setWhiteBackground = Colors.white.withAlpha(245);
    } else {
      return;
    }
  }

  set setWhiteBackground(Color color) {
    _scaffoldBackground.value = color;
    update();
  }
}
