import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/routes/routes.dart';
import 'package:truebildit/app/utils/app_paintings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        title: 'TrueBuildIt',
        defaultTransition: Transition.cupertino,
        debugShowCheckedModeBanner: false,
        theme: AppPaintings.appTheme,
        getPages: AppPages.pages,
        initialRoute: Routes.locationRequestView,
      ),
    );
  }
}
