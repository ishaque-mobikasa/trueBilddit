import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'TrueBuildIt',
        defaultTransition: Transition.cupertino,
        debugShowCheckedModeBanner: false,
        theme: AppPaintings.appTheme,
        getPages: AppPages.pages,
        initialRoute: Routes.locationRequestView);
  }
}
