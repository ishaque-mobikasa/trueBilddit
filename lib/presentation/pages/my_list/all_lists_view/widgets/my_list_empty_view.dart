import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/my_list/all_lists_view/controllers_bindings/my_list_controller.dart';

import 'add_list_modal.dart';

class MyListEmptyWidget extends GetView<MyListController> {
  const MyListEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        child: Column(
          children: [
            const CustomAppBar(
              title: "My Lists",
            ),
            SizedBox(
              height: 154.h,
            ),
            Image.asset(
              AssetStrings.emptyList,
              height: 120,
              width: 120,
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              "No List Found!",
              style: AppPaintings.customLargeText
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 9.h,
            ),
            SizedBox(
              width: 300.w,
              height: 38.h,
              child: Text(
                AppStrings.didntCreateList,
                style: AppPaintings.customSmallText,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 300.w,
              height: 42.h,
              child: LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "CREATE LIST",
                  onPressed: () {
                    Get.bottomSheet(const AddNewWishListModal());
                  }),
            )
          ],
        ));
  }
}
