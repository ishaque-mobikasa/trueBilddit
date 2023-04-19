import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_controller.dart';

class DashBoardView extends GetView<DashBoardController> {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.themeGreenColor,
    ));
    return Obx(
      () => Scaffold(
        backgroundColor: controller.getScaffoldColor(),
        body: Obx(() => controller.currentPage),
        bottomNavigationBar: Obx(
          () => Container(
            clipBehavior: Clip.hardEdge,
            height: 63.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: AppPaintings.kWhite,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(31, 31, 31, 0.1),
                  spreadRadius: 0,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: CustomNavigationBar(
                backgroundColor: AppPaintings.kWhite,
                strokeColor: AppPaintings.themeGreenColor,
                selectedColor: AppPaintings.themeGreenColor,
                onTap: (index) {
                  controller.setIndex(index);
                },
                currentIndex: controller.selectedIndex.value,
                items: [
                  CustomNavigationBarItem(
                      selectedTitle: Text(
                        "Home",
                        style: TextStyle(
                            color: AppPaintings.themeGreenColor,
                            overflow: TextOverflow.ellipsis),
                      ),
                      selectedIcon:
                          ImageIcon(AssetImage(AssetStrings.homeIconSelected)),
                      icon: ImageIcon(
                          AssetImage(AssetStrings.homeIconUnSelected)),
                      title: const Text(
                        "Home",
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      )),
                  CustomNavigationBarItem(
                      selectedTitle: Text(
                        "Categories",
                        style: TextStyle(
                            color: AppPaintings.themeGreenColor,
                            overflow: TextOverflow.ellipsis),
                      ),
                      selectedIcon: ImageIcon(
                          AssetImage(AssetStrings.categoriesSelected)),
                      icon: ImageIcon(
                          AssetImage(AssetStrings.categoriesUnSelected)),
                      title: const Text(
                        "Categories",
                        overflow: TextOverflow.ellipsis,
                      )),
                  CustomNavigationBarItem(
                      selectedTitle: Text(
                        "My List",
                        style: TextStyle(
                            color: AppPaintings.themeGreenColor,
                            overflow: TextOverflow.ellipsis),
                      ),
                      selectedIcon:
                          ImageIcon(AssetImage(AssetStrings.myListUnSelected)),
                      icon:
                          ImageIcon(AssetImage(AssetStrings.myListUnSelected)),
                      title: const Text(
                        "My List",
                        style: TextStyle(overflow: TextOverflow.ellipsis),
                      )),
                  CustomNavigationBarItem(
                      selectedTitle: Text(
                        "Basket",
                        style: TextStyle(color: AppPaintings.themeGreenColor),
                      ),
                      icon: ImageIcon(AssetImage(AssetStrings.basketSelected)),
                      title: const Text(
                        "Basket",
                        overflow: TextOverflow.ellipsis,
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
