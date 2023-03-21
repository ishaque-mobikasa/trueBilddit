import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/my_list/controllers_bindings/my_list_controller.dart';

import 'add_list_modal.dart';

class MyListEmptyWidget extends GetView<MyListController> {
  const MyListEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        height: Get.height * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetStrings.emptyList,
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "No List Found!",
              style: AppPaintings.customLargeText
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width * 0.8,
              child: Text(
                AppStrings.didntCreateList,
                style: AppPaintings.customSmallText,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LongButton(
                buttonType: ButtonType.elevatedButton,
                buttonText: "CREATE LIST",
                onPressed: () {
                  Get.bottomSheet(const AddNewWishListModal());
                })
          ],
        ));
  }
}
