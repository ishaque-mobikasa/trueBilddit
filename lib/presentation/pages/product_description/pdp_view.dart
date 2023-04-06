import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/pages/product_description/controller_binding/pdp_controller.dart';
import 'package:truebildit/presentation/pages/product_description/widget/build_dots.dart';
import 'package:truebildit/presentation/pages/product_description/widget/carousal_image.dart';

class PDPview extends GetView<PDPcontroller> {
  const PDPview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PDPcontroller());
    return SafeArea(
        child: Column(
      children: [
        CarouselSlider(
            items: List.generate(5, (index) => const CarousalImage()),
            options: CarouselOptions(
              onScrolled: (value) => log(value.toString()),
              viewportFraction: 1,
              onPageChanged: (index, reason) => controller.dotsChanger(index),
            )),
        Obx(
          () => BuildDots(
              currentIndex: controller.dotsIndex.value,
              dotsCount: 5,
              dotsColor: AppPaintings.themeGreenColor),
        ),
      ],
    ));
  }
}
