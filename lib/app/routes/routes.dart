import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/location_request_binding.dart';
import 'package:truebildit/presentation/pages/location_request/location_request_view.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_binding.dart';
import 'package:truebildit/presentation/pages/sign_up/sign_up_view.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_bindings.dart';
import 'package:truebildit/presentation/pages/splash_screen/splash_screen_view.dart';

class Routes {
  static const splashScreenView = '/splashScreenView';
  static const locationRequestView = '/locationRequestView';
  static const signUpview="/signUpView";
}

class AppPages {
  static var pages = [
    GetPage(
      name: Routes.splashScreenView,
      page: () => const SplashScreenView(),
      binding: SplashScreenBindings(),
    ),
    GetPage(
      name: Routes.locationRequestView,
      page: () => const LocationRequestView(),
      binding: LocationRequestBinding(),
    ),
        GetPage(
      name: Routes.signUpview,
      page: () => const SignUpView(),
      binding:SignUpBinding(),
    ),
  ];
}
