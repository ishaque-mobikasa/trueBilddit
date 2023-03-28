import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/controllers_binding/add_new_address_controller.dart';

class AddNewAddressView extends GetView<AddNewAddressController> {
  const AddNewAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 110.h),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  width: Get.width.w,
                  padding: EdgeInsets.only(left: 38.w),
                  child: Text(
                    "Contact Information",
                    style: AppPaintings.customLargeText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppPaintings.themeBlack),
                  )),
              SizedBox(
                height: 19.h,
              ),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "First Name*",
                labelStyle: const TextStyle(fontSize: 14),
                hintStyle: const TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Last Name*",
                labelStyle: const TextStyle(fontSize: 14),
                hintStyle: const TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Company (Optional)",
                labelStyle: const TextStyle(fontSize: 14),
                hintStyle: const TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Phone Number*",
                labelStyle: const TextStyle(fontSize: 14),
                hintStyle: const TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: Get.width.w,
                  padding: EdgeInsets.only(left: 38.w),
                  child: Text(
                    "Address",
                    style: AppPaintings.customLargeText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppPaintings.themeBlack),
                  )),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Street Address*",
                labelStyle: const TextStyle(fontSize: 14),
                hintStyle: const TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Post Code*",
                labelStyle: const TextStyle(fontSize: 14),
                hintStyle: const TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 42.h,
                width: 300.w,
                child: LongButton(
                    buttonType: ButtonType.elevatedButton,
                    buttonText: "ADD ADDRESS",
                    onPressed: () {}),
              )
            ],
          ),
        ),
        const CustomAppBar(
          title: "Add New Address",
        )
      ],
    );
  }
}
