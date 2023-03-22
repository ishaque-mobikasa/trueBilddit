import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';

class LocationModalSheet extends StatelessWidget {
  const LocationModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: Container(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.6,
          ),
          color: Colors.white,
          child: Column(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.08,
                      width: size.width,
                      color: const Color(0xffF8F8F8),
                      child: Row(
                        children: [
                          const Spacer(),
                          Expanded(
                            flex: 4,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Choose Your Location",
                                style: AppPaintings.customLargeText,
                              ),
                            ),
                          ),
                          Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(Icons.close)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height * 0.25,
                child: Image.asset(
                  AssetStrings.circledLocation,
                  width: size.width,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width * 0.75,
                child: LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: AppStrings.yourCurrentLocation,
                  onPressed: () {},
                  iconImage: AssetStrings.currentLocationIcon,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              SizedBox(
                width: size.width * 0.75,
                child: LongButton(
                    buttonType: ButtonType.outLinedButton,
                    buttonText: AppStrings.enterManualLocation,
                    iconImage: AssetStrings.landMarkIcon,
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
