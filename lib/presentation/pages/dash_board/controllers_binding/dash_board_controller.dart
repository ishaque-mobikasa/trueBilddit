import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/add_address_view.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/login/login_view.dart';
import 'package:truebildit/presentation/pages/sign_up/sign_up_view.dart';

class DashBoardController extends GetxController {
  final Rx<Color> _scaffoldBackground = Colors.white.withAlpha(245).obs;
  RxInt selectedIndex = 0.obs;
  List<Widget> pages = [
    const HomeView(),
    const SignUpView(),
    const LoginView(),
    const AddNewAddressView()
  ];
  Color getScaffoldColor() => _scaffoldBackground.value;

  Widget get currentPage => pages[selectedIndex.value];
  setIndex(index) {
    if (index != selectedIndex.value) {
      selectedIndex.value = index;
      if (index == 0) {
        setWhiteBackground = Colors.white.withAlpha(245);
      } else {
        setWhiteBackground = Colors.white;
      }
    } else {
      return;
    }
  }

  set setWhiteBackground(Color color) {
    _scaffoldBackground.value = color;
    update();
  }
}
