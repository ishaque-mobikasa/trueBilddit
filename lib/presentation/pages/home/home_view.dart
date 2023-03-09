import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/custom_clipper.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';
import 'package:truebildit/presentation/pages/home/widgets/circular_category.dart';
import 'package:truebildit/presentation/pages/home/widgets/location_widget.dart';

import 'widgets/search_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:
            Theme.of(context).scaffoldBackgroundColor.withAlpha(245),
        body: SingleChildScrollView(
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
                                Expanded(
                                  flex: 2,
                                  child: SizedBox(
                                    height: size.height * 0.08,
                                    child: Align(
                                        alignment: Alignment.centerRight,
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
                                log("Tapped on Location");
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
                  Wrap(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularCategoryItem(
                            image: AssetStrings.electrical,
                            title: "Electrical& Lighting",
                          ),
                          CircularCategoryItem(
                            image: AssetStrings.plumbing,
                            title: "Plumbing& Heating",
                          ),
                          CircularCategoryItem(
                            image: AssetStrings.fixing,
                            title: "Fixings& Support",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularCategoryItem(
                            image: AssetStrings.tools,
                            title: "Tools& Equipment",
                          ),
                          CircularCategoryItem(
                            image: AssetStrings.sealants,
                            title: "Sealants& Adhesives",
                          ),
                          CircularCategoryItem(
                            image: AssetStrings.paintings,
                            title: "Painting &Decorating",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          CircularCategoryItem(
                            image: AssetStrings.ironMongery,
                            title: "Ironmongery",
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircularCategoryItem(
                            image: AssetStrings.fireAndSecurity,
                            title: "Fire&Security",
                            onTap: () => log("Tapped"),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Positioned(
                  top: size.height * 0.23,
                  child: CustomSearchField(
                    hintText: AppStrings.searchForProduct,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}