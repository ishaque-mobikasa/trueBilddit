import 'package:flutter/material.dart';
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
        constraints: BoxConstraints(
          maxHeight: size.height * 0.35,
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
            const SizedBox(
              height: 20,
            ),
            const Text("Enter a name of your saved list."),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: size.width * 0.85,
                child: const CustomFormField(
                    initialValue: "Abc List",
                    hintText: "List Name",
                    type: FieldType.normalInputField)),
            SizedBox(
              height: size.height * 0.01,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: size.height * 0.15,
                    child: ShortButton(
                        maxWidth: size.width * 0.35,
                        buttonType: ButtonType.elevatedButton,
                        buttonText: "CREATE LIST",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    height: size.height * 0.15,
                    child: ShortButton(
                        maxWidth: size.width * 0.35,
                        maxheight: size.height * 0.2,
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
