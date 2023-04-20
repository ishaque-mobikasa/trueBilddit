import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/my_account/my_account_view.dart';
import 'package:truebildit/presentation/pages/payments/payment_view.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/sub_category_view.dart';

class DashBoardController extends GetxController {
  final Rx<Color> _scaffoldBackground = Colors.white.withAlpha(245).obs;
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [
    const HomeView(),
    const SubCategoryView(),
    const MyAccountView(),
    const PaymentView(),
  ];
  Color getScaffoldColor() => _scaffoldBackground.value;

  Widget get currentPage => pages[selectedIndex.value];
  setIndex(index) {
    if (index != selectedIndex.value) {
      if (index == 3) {
        setWhiteBackground = AppPaintings.kWhite;
      } else {
        setWhiteBackground = AppPaintings.scaffoldBackgroundDimmed;
      }
      selectedIndex.value = index;
    } else {
      return;
    }
  }

  set setWhiteBackground(Color color) {
    _scaffoldBackground.value = color;
    update();
  }
}
