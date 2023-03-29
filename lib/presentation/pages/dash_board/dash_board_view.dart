import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_controller.dart';

class DashBoardView extends GetView<DashBoardController> {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppPaintings.kWhite,
    ));
    return Obx(
      () => Scaffold(
        backgroundColor: controller.getScaffoldColor(),
        body: Obx(() => controller.currentPage),
        bottomNavigationBar: Obx(
          () => ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: CustomNavigationBar(
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
                          ImageIcon(AssetImage(AssetStrings.myListSelected)),
                      icon: ImageIcon(AssetImage(AssetStrings.myListSelected)),
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
