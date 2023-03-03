import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utility_functions/utilities.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = UtilityFunctions.getSize(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            color: AppPaintings.themeGreenColor,
            image: DecorationImage(
                image: AssetImage(AssetStrings.splashImage),
                fit: BoxFit.cover)),
        child: Center(
            child: SizedBox(
                width: size.width * 0.5,
                child: Image.asset(AssetStrings.bildItLogo))),
      ),
    );
  }
}
