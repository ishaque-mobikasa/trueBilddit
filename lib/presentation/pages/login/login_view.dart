import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/login/controller_binding/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: AppPaintings.kWhite,
            actions: [
              CupertinoButton(
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppPaintings.themeBlack),
                  ),
                  onPressed: () {})
            ],
          ),
          Image.asset(
            AssetStrings.bildItLogoGreen,
            width: Get.width / 3,
            height: Get.height * 0.05,
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: Text(
              "Welcome!",
              textAlign: TextAlign.center,
              style: AppPaintings.customLargeText
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
            width: Get.width * 0.8,
            height: Get.height * 0.05,
            child: Text(
              textAlign: TextAlign.center,
              "Sign in to continue",
              style: AppPaintings.customSmallText
                  .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          CustomFormField(
            initialValue: "+44 7911 123456",
            type: FieldType.eMail,
            hintText: "Mobile Number",
            margin: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: LongButton(
                buttonType: ButtonType.elevatedButton,
                buttonText: "GET OTP",
                onPressed: () {}),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
              width: Get.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: AppPaintings.dimWhite,
                    width: Get.width * 0.15,
                    height: 3,
                  ),
                  const Text("OR"),
                  Container(
                    color: AppPaintings.dimWhite,
                    width: Get.width * 0.15,
                    height: 3,
                  ),
                ],
              )),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: LongButton(
                isSocialButton: true,
                outlinedButtonBorderColor: AppPaintings.loginButtonBorderColor,
                buttonType: ButtonType.outLinedButton,
                buttonText: "  Sign In With Email",
                iconImage: AssetStrings.emailIcon,
                buttonTextStyle: TextStyle(color: AppPaintings.themeBlack),
                onPressed: () {}),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: LongButton(
                isSocialButton: true,
                outlinedButtonBorderColor: AppPaintings.loginButtonBorderColor,
                buttonType: ButtonType.outLinedButton,
                buttonText: "Sign In With Google",
                iconImage: AssetStrings.googleIcon,
                buttonTextStyle: TextStyle(color: AppPaintings.themeBlack),
                onPressed: () {}),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          SizedBox(
            width: Get.width * 0.8,
            child: LongButton(
                isSocialButton: true,
                outlinedButtonBorderColor: AppPaintings.loginButtonBorderColor,
                buttonType: ButtonType.outLinedButton,
                buttonText: "Sign In With Facebook",
                iconImage: AssetStrings.facebookIcon,
                buttonTextStyle: TextStyle(color: AppPaintings.themeBlack),
                onPressed: () {}),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Text.rich(
            TextSpan(
              text: 'Don’t have an account? ',
              children: [
                TextSpan(
                  text: 'Sign Up ',
                  style: TextStyle(
                    color: AppPaintings.themeGreenColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // handle sign in tap
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
