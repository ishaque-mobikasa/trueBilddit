import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/add_address_view.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/my_basket/my_basket_view.dart';
import 'package:truebildit/presentation/pages/my_list/all_lists_view/my_list_view.dart';
import 'package:truebildit/presentation/pages/orders/order_history/order_history_view.dart';
import 'package:truebildit/presentation/pages/orders/order_summary/order_summary_view.dart';
import 'package:truebildit/presentation/pages/orders/order_summary/widget/order_confirmed.dart';
import 'package:truebildit/presentation/pages/search_results/search_result_view.dart';
import 'package:truebildit/presentation/pages/shipping_address/shipping_address_view.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/sub_category_view.dart';

class DashBoardController extends GetxController {
  final Rx<Color> _scaffoldBackground = Colors.white.withAlpha(245).obs;
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [
    const HomeView(),
    const SubCategoryView(),
    const AddNewAddressView(),
    const OrderConfirmedView()
  ];
  Color getScaffoldColor() => _scaffoldBackground.value;

  Widget get currentPage => pages[selectedIndex.value];
  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
      setWhiteBackground = AppPaintings.kWhite;
    } else {
      return;
    }
  }

  set setWhiteBackground(Color color) {
    _scaffoldBackground.value = color;
    update();
  }
}
