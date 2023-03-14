import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utility_functions/dummy_list.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/custom_clipper.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';
import 'package:truebildit/presentation/pages/home/widgets/circular_category.dart';
import 'package:truebildit/presentation/pages/home/widgets/location_widget.dart';
import 'package:truebildit/presentation/pages/home/widgets/modal_bottom_sheet.dart';
import 'package:truebildit/presentation/pages/home/widgets/two_part_container.dart';

import 'widgets/search_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                clipper: OvalShape(),
                child: Container(
                  height: size.height * 0.3,
                  color: AppPaintings.themeGreenColor,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              child: SizedBox(
                                height: size.height * 0.08,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      AssetStrings.bildItLogo,
                                      width: size.width * 0.3,
                                    )),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: size.height * 0.08,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          CupertinoIcons.person,
                                          color: AppPaintings.kWhite,
                                        ))),
                              ),
                            )
                          ],
                        ),
                      ),
                      LocationWidget(
                          locationName: "Manchester",
                          onTap: () {
                            Get.bottomSheet(const LocationModalSheet());
                          }),
                      Container(
                        width: size.width,
                        padding: const EdgeInsets.only(left: 20),
                        child: RichText(
                          textAlign: TextAlign.start,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Delivery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                              TextSpan(
                                  text: ' to your door in \n',
                                  style: TextStyle(fontSize: 24)),
                              TextSpan(
                                  text: 'under ',
                                  style: TextStyle(fontSize: 24)),
                              TextSpan(
                                  text: '2 hours',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: '...',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.47,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: homeItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      childAspectRatio: 1.05,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => CircularCategoryItem(
                    circularItem: homeItems[index],
                    onTap: () => log("Clicked on circular item"),
                  ),
                ),
              ),
              const TwoPartContainer()
            ],
          ),
          Positioned(
              top: size.height * 0.23,
              child: CustomSearchField(
                hintText: AppStrings.searchForProduct,
              ))
        ],
      ),
    );
  }
}
