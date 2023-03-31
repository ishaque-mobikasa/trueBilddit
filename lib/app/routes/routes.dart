import 'package:get/get.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/add_address_view.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/controllers_binding/add_new_address_binding.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/address_view.dart';
import 'package:truebildit/presentation/pages/address/view_all_address/controllers_binding/address_binding.dart';
import 'package:truebildit/presentation/pages/change_password/change_password_view.dart';
import 'package:truebildit/presentation/pages/change_password/controllers_binding/change_password_binding.dart';
import 'package:truebildit/presentation/pages/dash_board/controllers_binding/dash_board_binding.dart';
import 'package:truebildit/presentation/pages/dash_board/dash_board_view.dart';
import 'package:truebildit/presentation/pages/forgot_password/controllers_binding/forgot_password_binding.dart';
import 'package:truebildit/presentation/pages/forgot_password/forgot_password_view.dart';
import 'package:truebildit/presentation/pages/home/controller_binding/home_binding.dart';
import 'package:truebildit/presentation/pages/home/home_view.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/location_request_binding.dart';
import 'package:truebildit/presentation/pages/location_request/location_request_view.dart';
import 'package:truebildit/presentation/pages/login/email_login/controller_binding/email_login_binding.dart';
import 'package:truebildit/presentation/pages/login/email_login/email_login_view.dart';
import 'package:truebildit/presentation/pages/login/otp_login/controller_binding/otp_login_binding.dart';
import 'package:truebildit/presentation/pages/login/otp_login/otp_login_view.dart';
import 'package:truebildit/presentation/pages/login/otp_login/otp_verification/controller_binding/otp_verification_binding.dart';
import 'package:truebildit/presentation/pages/login/otp_login/otp_verification/otp_verification_view.dart';
import 'package:truebildit/presentation/pages/my_account/controllers_binding/my_account_binding.dart';
import 'package:truebildit/presentation/pages/my_account/my_account_view.dart';
import 'package:truebildit/presentation/pages/my_basket/controller_binding/basket_binding.dart';
import 'package:truebildit/presentation/pages/my_basket/my_basket_view.dart';
import 'package:truebildit/presentation/pages/my_list/all_lists_view/controllers_bindings/my_list_binding.dart';
import 'package:truebildit/presentation/pages/my_list/all_lists_view/my_list_view.dart';
import 'package:truebildit/presentation/pages/my_list/selected_list_contents/selected_list_controller_binding/selected_list_binding.dart';
import 'package:truebildit/presentation/pages/my_list/selected_list_contents/selected_list_view.dart';
import 'package:truebildit/presentation/pages/orders/order_history/order_history_controller_binding/order_history_binding.dart';
import 'package:truebildit/presentation/pages/orders/order_history/order_history_view.dart';
import 'package:truebildit/presentation/pages/profile/controllers_bindings/profile_binding.dart';
import 'package:truebildit/presentation/pages/profile/profile_view.dart';
import 'package:truebildit/presentation/pages/search_results/controllers_bindings/search_binding.dart';
import 'package:truebildit/presentation/pages/search_results/search_result_view.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_binding.dart';
import 'package:truebildit/presentation/pages/sign_up/sign_up_view.dart';
import 'package:truebildit/presentation/pages/splash_screen/controllers_bindings/splash_screen_bindings.dart';
import 'package:truebildit/presentation/pages/splash_screen/splash_screen_view.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/controllers_bindings/sub_category_binding.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/sub_category_item_view/controller_binding.dart/sub_category_items_view_controller.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/sub_category_item_view/sub_category_items.dart';
import 'package:truebildit/presentation/pages/sub_category_listing/sub_category_view.dart';

class Routes {
  static const splashScreenView = '/splashScreenView';
  static const locationRequestView = '/locationRequestView';
  static const signUpview = "/signUpView";
  static const forgotPasswordView = "/forgotPasswordView";
  static const homeView = "/homeView";
  static const searchView = "/searchView";
  static const dashBoardView = "/dashBoardView";
  static const profileView = "/profileView";
  static const addressView = "/addressView";
  static const otpLoginView = "/otpLoginView";
  static const addNewAddress = "/addNewAddress";
  static const myAccountView = "/myAccountView";
  static const changePasswordView = "/changePasswordView";
  static const emailLoginView = "/emailLoginView";
  static const subCategoryView = "/subCategoryView";
  static const myListView = "/myListView";
  static const selectedListView = "/selectedListView";
  static const orderHistoryView = "/orderHistoryView";
  static const subCategoryItemsView = "/subCategoryItemsView";
  static const otpVerificationView = "/otpVerificationView";
  static const myBasketView = "/myBasketView";
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
    GetPage(
        name: Routes.addressView,
        page: () => const ViewAllAddressView(),
        binding: ViewAllAddressBinding()),
    GetPage(
        name: Routes.otpLoginView,
        page: () => const OTPLoginView(),
        binding: OTPLoginBinding()),
    GetPage(
        name: Routes.addNewAddress,
        page: () => const AddNewAddressView(),
        binding: AddNewAddressBinding()),
    GetPage(
        name: Routes.myAccountView,
        page: () => const MyAccountView(),
        binding: MyAccountBinding()),
    GetPage(
        name: Routes.changePasswordView,
        page: () => const ChangePasswordView(),
        binding: ChangePasswordBinding()),
    GetPage(
        name: Routes.emailLoginView,
        page: () => const EmailLoginView(),
        binding: EmailLoginBinding()),
    GetPage(
        name: Routes.subCategoryView,
        page: () => const SubCategoryView(),
        binding: SubCategoryBinding()),
    GetPage(
        name: Routes.myListView,
        page: () => const MyListView(),
        binding: MyListBinding()),
    GetPage(
        name: Routes.selectedListView,
        page: () => const SelectedListView(),
        binding: SelectedListBinding()),
    GetPage(
        name: Routes.orderHistoryView,
        page: () => const OrderHistoryView(),
        binding: OrderHistoryBinding()),
    GetPage(
        name: Routes.subCategoryItemsView,
        page: () => const SubCategoryItemsView(),
        binding: SubcategoryItemsBindings()),
    GetPage(
        name: Routes.otpVerificationView,
        page: () => const OTPverificationView(),
        binding: OTPverificationBinding()),
    GetPage(
        name: Routes.myBasketView,
        page: () => const MyBasketView(),
        binding: MyBasketBinding()),
  ];
}
