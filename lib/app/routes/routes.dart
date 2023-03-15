import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_binding.dart';
import 'package:truebildit/presentation/pages/dash_board/dash_board_view.dart';
import 'package:truebildit/presentation/pages/forgot_password/controllers_binding/forgot_password_binding.dart';
import 'package:truebildit/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_binding.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/location_request_binding.dart';
import 'package:truebildit/presentation/pages/location_request/location_request_view.dart';
import 'package:truebildit/presentation/pages/profilew/controllers_bindings/profile_binding.dart';
import 'package:truebildit/presentation/pages/profilew/profile_view.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_bindings/search_binding.dart';
import 'package:truebildit/presentation/pages/search_results/search_result_view.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_binding.dart';
import 'package:truebildit/presentation/pages/sign_up/sign_up_view.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_bindings.dart';
import 'package:truebildit/presentation/pages/splash_screen/splash_screen_view.dart';

class Routes {
  static const splashScreenView = '/splashScreenView';
  static const locationRequestView = '/locationRequestView';
  static const signUpview = "/signUpView";
  static const forgotPasswordView = "/forgotPasswordView";
  static const homeView = "/homeView";
  static const searchView = "/searchView";
  static const dashBoardView = "/dashBoardView";
  static const profileView = "/profileView";
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
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordView,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
        name: Routes.homeView,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.searchView,
        page: () => const SearchResultsView(),
        binding: SearchBinding()),
    GetPage(
        name: Routes.dashBoardView,
        page: () => const DashBoardView(),
        binding: DashBoardBinding()),
    GetPage(
        name: Routes.profileView,
        page: () => const ProfileView(),
        binding: ProfileBinding()),
  ];
}
