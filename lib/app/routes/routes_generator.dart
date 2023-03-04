import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/routes/routes.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_bindings.dart';
import 'package:truebildit/presentation/pages/splash_screen/splash_screen_view.dart';

class RoutesGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    log("generating routes");
    switch (settings.name) {
      case Routes.splashScreenView:
        return GetPageRoute(
            routeName: Routes.splashScreenView,
            page: () => const SplashScreenView(),
            binding: SplashScreenBindings());
    }
    return null;
  }
}
