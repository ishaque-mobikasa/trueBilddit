import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truebildit/app/utility_functions/dummy_list.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/custom_clipper.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';
import 'package:truebildit/presentation/pages/home/widgets/location_widget.dart';
import 'package:truebildit/presentation/pages/home/widgets/modal_bottom_sheet.dart';
import 'package:truebildit/presentation/pages/home/widgets/search_widget.dart';
import 'package:truebildit/presentation/pages/home/widgets/two_part_container.dart';

import 'widgets/circular_category.dart';

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
                  height: 237.h,
                  width: 375.w,
                  color: AppPaintings.themeGreenColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 135.w,
                            ),
                            child: SizedBox(
                              height: 26.55.h,
                              width: 104.w,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    AssetStrings.bildItLogo,
                                  )),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                  size: 18.w,
                                  AssetImage(AssetStrings.personIcon)))
                        ],
                      ),
                      LocationWidget(
                          locationName: "Manchester",
                          onTap: () {
                            Get.bottomSheet(const LocationModalSheet());
                          }),
                      SizedBox(
                        height: 9.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15.w),
                            width: 301.w,
                            height: 60.h,
                            child: RichText(
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                          fontSize: 24.sp)),
                                  TextSpan(
                                      text: ' to your door in \n',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.montserrat().fontFamily,
                                      )),
                                  TextSpan(
                                      text: 'under ',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            GoogleFonts.montserrat().fontFamily,
                                      )),
                                  TextSpan(
                                      text: '2 hours',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            GoogleFonts.montserrat().fontFamily,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.54,
                width: size.width * 0.9,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: homeItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9, crossAxisCount: 3),
                  itemBuilder: (context, index) => CircularCategoryItem(
                    circularItem: homeItems[index],
                    onTap: () => log("Clicked on circular item"),
                  ),
                ),
              ),
              const TwoPartContainer(),
            ],
          ),
          Positioned(
              top: 193.h,
              left: 15.w,
              child: SizedBox(
                height: 56.h,
                width: 345.w,
                child: const CustomSearchField(
                  padding: EdgeInsets.zero,
                  hintText: "Search for your product here...",
                ),
              ))
        ],
      ),
    );
  }
}
