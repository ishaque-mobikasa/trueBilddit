import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/forgot_password/controllers_binding/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppPaintings.kWhite,
        elevation: 0,
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
                height: size.height * 0.3,
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  AssetStrings.forgotPasswordImage,
                  height: size.height * 0.15,
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.forgotPassword,
              style: AppPaintings.customLargeText,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Text(
                AppStrings.getPasswordLink,
                style: AppPaintings.customSmallText,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            const CustomFormField(
              type: FieldType.eMail,
              hintText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            LongButton(
                buttonType: ButtonType.elevatedButton,
                buttonText: "REQUEST RESET LINK",
                onPressed: () {})
          ],
        ),
      ),
    ));
  }
}
