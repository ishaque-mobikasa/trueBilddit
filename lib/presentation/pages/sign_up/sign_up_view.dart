import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/circled_profile_image.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/sign_up/controllers_binding/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            titleTextStyle: AppPaintings.customLargeText
                .copyWith(fontWeight: FontWeight.w500),
            backgroundColor: AppPaintings.kWhite,
            elevation: 0,
            title: const Text("Sign Up"),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.back,
                  color: AppPaintings.themeLightBlack,
                )),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    constraints: BoxConstraints(maxHeight: size.height * 0.2),
                    child: Obx(
                      () => CircledProfileImage(
                        isCameraIconed: true,
                        image: controller.pickedImage.value,
                        backGroundCameraAvatarColor:
                            AppPaintings.themeGreenColor,
                        onTap: () => controller.onImagePickButtonClick(),
                      ),
                    )),
                const CustomFormField(
                    hintText: "Full Name",
                    icon: Icons.ac_unit,
                    type: FieldType.normalInputField),
                const CustomFormField(
                    hintText: "Comapny Name(Optional)",
                    icon: Icons.ac_unit,
                    type: FieldType.normalInputField),
                const CustomFormField(
                    hintText: "E mail*",
                    icon: Icons.ac_unit,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    type: FieldType.eMail),
                const CustomFormField(
                    hintText: "Mobile Number*",
                    icon: Icons.ac_unit,
                    type: FieldType.phoneNumber),
                const CustomFormField(
                    hintText: "Password*",
                    icon: Icons.ac_unit,
                    obscureText: true,
                    type: FieldType.password),
                const CustomFormField(
                    hintText: "Confirm Password*",
                    icon: Icons.ac_unit,
                    obscureText: true,
                    type: FieldType.password),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Obx(() => Checkbox(
                          value: controller.isPrivacyAccepted.value,
                          onChanged: (value) =>
                              controller.onPrivacyToggler(value!),
                        )),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: "I accept  ",
                          style: TextStyle(
                            color: AppPaintings.kBlack,
                          ),
                          children: [
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                  color: AppPaintings.themeGreenColor,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: "Terms of Use",
                              style: TextStyle(
                                  color: AppPaintings.themeGreenColor,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                LongButton(
                    buttonType: ButtonType.elevatedButton,
                    buttonText: "Sign Up",
                    onPressed: () {}),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: AppPaintings.themeGreenColor,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // handle sign in tap
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
