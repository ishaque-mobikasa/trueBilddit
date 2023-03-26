import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/address_view.dart';
import 'package:truebildit/presentation/pages/login/email_login/email_login_view.dart';
import 'package:truebildit/presentation/pages/login/otp_login/otp_login_view.dart';
import 'package:truebildit/presentation/pages/orders/order_history/order_history_view.dart';

class DashBoardController extends GetxController {
  final Rx<Color> _scaffoldBackground = Colors.white.withAlpha(245).obs;
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [
    const EmailLoginView(),
    const OTPLoginView(),
    const ViewAllAddressView(),
    const OrderHistoryView()
  ];
  Color getScaffoldColor() => _scaffoldBackground.value;

  Widget get currentPage => pages[selectedIndex.value];
  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
      setWhiteBackground = Colors.white;
    } else {
      return;
    }
  }

  set setWhiteBackground(Color color) {
    _scaffoldBackground.value = color;
    update();
  }
}
