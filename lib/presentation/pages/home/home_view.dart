import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truebildit/app/utility_functions/dummy_list.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_controller.dart';
import 'package:truebildit/presentation/pages/home/widgets/two_part_container.dart';

import 'widgets/circular_category.dart';
import 'widgets/location_widget.dart';
import 'widgets/modal_bottom_sheet.dart';
import 'widgets/search_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: 375.w,
                          height: 237.h,
                          child: SvgPicture.asset(
                            AssetStrings.homeScreenGreen,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 237.h,
                          width: 375.w,
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
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Image.asset(
                                      AssetStrings.personIcon,
                                      height: 18.h,
                                      width: 16.w,
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 17.h),
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
                                                  fontFamily:
                                                      GoogleFonts.montserrat()
                                                          .fontFamily,
                                                  fontSize: 24.sp)),
                                          TextSpan(
                                              text: ' to your door in \n',
                                              style: TextStyle(
                                                fontSize: 24.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    GoogleFonts.montserrat()
                                                        .fontFamily,
                                              )),
                                          TextSpan(
                                              text: 'under ',
                                              style: TextStyle(
                                                fontSize: 24.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    GoogleFonts.montserrat()
                                                        .fontFamily,
                                              )),
                                          TextSpan(
                                              text: '2 hours',
                                              style: TextStyle(
                                                fontSize: 24.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily:
                                                    GoogleFonts.montserrat()
                                                        .fontFamily,
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
                      ],
                    ),
                    SizedBox(
                      width: 324.5.w,
                      height: 500.h,
                      child: GridView.builder(
                        padding: EdgeInsets.only(top: 20.h),
                        physics: const BouncingScrollPhysics(),
                        itemCount: homeItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 10.h,
                            childAspectRatio: 0.85,
                            crossAxisCount: 3),
                        itemBuilder: (context, index) => CircularCategoryItem(
                          circularItem: homeItems[index],
                          onTap: () => log("Clicked on circular item"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 193.h,
                  left: 15.w,
                  child: SizedBox(
                    height: 56.h,
                    width: 345.w,
                    child: CustomSearchField(
                      hintStyle: TextStyle(fontSize: 14.sp),
                      padding: EdgeInsets.zero,
                      hintText: "Search for your product here...",
                    ),
                  )),
              Positioned(
                  bottom: 1.h,
                  child:
                      SizedBox(width: 375.w, child: const TwoPartContainer()))
            ],
          ),
        ],
      ),
    );
  }
}
