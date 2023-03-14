import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/location_request/location_request_view.dart';
import 'package:truebildit/presentation/pages/search_results/search_result_view.dart';

class DashBoardController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [
    const HomeView(),
    const ForgotPasswordView(),
    const LocationRequestView(),
    const SearchResultsView()
  ];

  Widget get currentPage => pages[selectedIndex.value];
  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
    } else {
      return;
    }
  }
}
