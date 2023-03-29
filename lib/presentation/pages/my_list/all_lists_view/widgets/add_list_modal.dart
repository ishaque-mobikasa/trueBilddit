import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/common_widgets/short_button.dart';

class AddNewWishListModal extends StatelessWidget {
  const AddNewWishListModal({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      child: Container(
        constraints: BoxConstraints(maxHeight: 270.h),
        color: Colors.white,
        child: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                  Container(
                    height: 52.h,
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
                              "Create New List",
                              style: AppPaintings.customLargeText.copyWith(
                                  color: AppPaintings.themeLightBlack),
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
            SizedBox(
              height: 26.h,
            ),
            const Text("Enter a name of your saved list."),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
                width: 300.w,
                child: const CustomFormField(
                    initialValue: "Abc List",
                    hintText: "List Name",
                    type: FieldType.normalInputField)),
            SizedBox(height: 24.h),
            SizedBox(
              width: 300.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 42.h,
                    width: 142.w,
                    child: ShortButton(
                        buttonType: ButtonType.elevatedButton,
                        buttonText: "CREATE LIST",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    height: 42.h,
                    width: 142.w,
                    child: ShortButton(
                        buttonStyle: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: const BorderSide(
                                        color: Colors.black)))),
                        buttonType: ButtonType.outLinedButton,
                        buttonText: "CANCEL",
                        onPressed: () {
                          Get.back();
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
