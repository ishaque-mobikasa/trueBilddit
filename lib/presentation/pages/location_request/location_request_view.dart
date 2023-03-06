import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/location_request/controllers_bindings/locatio_request_controller.dart';

class LocationRequestView extends GetView<LocationRequestController> {
  const LocationRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppPaintings.kWhite,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.back,
                color: AppPaintings.kBlack,
              )),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(
                  maxWidth: size.width, maxHeight: size.height * 0.05),
              child: Image.asset(
                AssetStrings.bildItLogoGreen,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height * 0.03,
              ),
              alignment: Alignment.center,
              constraints: BoxConstraints(
                  maxWidth: size.width, maxHeight: size.height * 0.25),
              child: Image.asset(
                AssetStrings.circledLocation,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              constraints: BoxConstraints(
                maxWidth: size.width,
              ),
              child: Text(AppStrings.needYourLocation,
                  style: AppPaintings.customLargeText),
            ),
            Container(
              padding: EdgeInsets.only(top: size.height * 0.03),
              constraints: BoxConstraints(
                maxWidth: size.width,
              ),
              child: Text(AppStrings.requestPermissionAccess,
                  textAlign: TextAlign.center,
                  style: AppPaintings.customSmallText),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            LongButton(
              buttonType: ButtonType.elevatedButton,
              buttonText: AppStrings.yourCurrentLocation,
              onPressed: () {},
              iconImage: AssetStrings.currentLocationIcon,
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            LongButton(
                buttonType: ButtonType.outLinedButton,
                buttonText: AppStrings.enterManualLocation,
                iconImage: AssetStrings.landMarkIcon,
                onPressed: () {}),
            SizedBox(height: size.height * 0.03),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetStrings.cityImage),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        )));
  }
}
