import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/routes/routes.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/add_address_view.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/controllers_binding/add_new_address_binding.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/address_view.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/controllers_binding/address_binding.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_binding.dart';
import 'package:truebildit/presentation/pages/dash_board/dash_board_view.dart';
import 'package:truebildit/presentation/pages/forgot_password/controllers_binding/forgot_password_binding.dart';
import 'package:truebildit/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_binding.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/location_request_binding.dart';
import 'package:truebildit/presentation/pages/location_request/location_request_view.dart';
import 'package:truebildit/presentation/pages/login/otp_login/controller_binding/otp_login_binding.dart';
import 'package:truebildit/presentation/pages/login/otp_login/otp_login_view.dart';
import 'package:truebildit/presentation/pages/profile/controllers_bindings/profile_binding.dart';
import 'package:truebildit/presentation/pages/profile/profile_view.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_binding/search_binding.dart';
import 'package:truebildit/presentation/pages/search_results/search_result_view.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_binding.dart';
import 'package:truebildit/presentation/pages/sign_up/sign_up_view.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_bindings.dart';
import 'package:truebildit/presentation/pages/splash_screen/splash_screen_view.dart';

import '../../presentation/pages/home/home_view.dart';

class RoutesGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    log("generating routes");
    switch (settings.name) {
      case Routes.splashScreenView:
        return GetPageRoute(
            routeName: Routes.splashScreenView,
            page: () => const SplashScreenView(),
            binding: SplashScreenBindings());
      case Routes.locationRequestView:
        return GetPageRoute(
            routeName: Routes.locationRequestView,
            page: () => const LocationRequestView(),
            binding: LocationRequestBinding());
      case Routes.signUpview:
        return GetPageRoute(
          routeName: Routes.signUpview,
          page: () => const SignUpView(),
          binding: SignUpBinding(),
        );
      case Routes.forgotPasswordView:
        return GetPageRoute(
          routeName: Routes.forgotPasswordView,
          page: () => const ForgotPasswordView(),
          binding: ForgotPasswordBinding(),
        );
      case Routes.homeView:
        return GetPageRoute(
            routeName: Routes.homeView,
            page: () => const HomeView(),
            binding: HomeBinding());
      case Routes.searchView:
        return GetPageRoute(
            routeName: Routes.searchView,
            page: () => const SearchResultsView(),
            binding: SearchBinding());
      case Routes.dashBoardView:
        return GetPageRoute(
            routeName: Routes.dashBoardView,
            page: () => const DashBoardView(),
            binding: DashBoardBinding());
      case Routes.profileView:
        return GetPageRoute(
            routeName: Routes.profileView,
            page: () => const ProfileView(),
            binding: ProfileBinding());
      case Routes.addressView:
        return GetPageRoute(
            routeName: Routes.addressView,
            page: () => const ViewAllAddressView(),
            binding: ViewAllAddressBinding());
      case Routes.otpLoginView:
        return GetPageRoute(
            routeName: Routes.otpLoginView,
            page: () => const OTPLoginView(),
            binding: OTPLoginBinding());
      case Routes.addNewAddress:
        return GetPageRoute(
            routeName: Routes.addNewAddress,
            page: () => const AddNewAddressView(),
            binding: AddNewAddressBinding());
    }
    return null;
  }
}
