import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/presentation/common_widgets/custom_app_bar.dart';
import 'package:truebildit/presentation/common_widgets/form_field_with_validation.dart';
import 'package:truebildit/presentation/common_widgets/long_button.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/controllers_binding/add_new_address_controller.dart';
import 'package:truebildit/presentation/pages/address/add_address_page/widgets/dummy_town_county.dart';

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
                        fontWeight: FontWeight.bold,
                        color: AppPaintings.themeBlack),
                  )),
              SizedBox(
                height: 19.h,
              ),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "First Name*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Last Name*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Company (Optional)",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Phone Number*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
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
                        fontWeight: FontWeight.bold,
                        color: AppPaintings.themeBlack),
                  )),
              CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Street Address*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              SizedBox(
                width: 300.w,
                child: DropdownButtonFormField(
                    menuMaxHeight: Get.height.h * 0.3,
                    hint: Text(
                      "Town/City*",
                      style: TextStyle(
                          fontSize: 14.sp, color: AppPaintings.kBlack),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17.h),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffECECEC)),
                      ),
                    ),
                    iconEnabledColor: AppPaintings.themeGreenColor,
                    elevation: 0,
                    items: List.generate(
                      cityNames.length,
                      (index) => DropdownMenuItem(
                          value: cityNames[index],
                          child: Text(cityNames[index])),
                    ),
                    onChanged: (value) {
                      log(value.toString());
                    }),
              ),
              SizedBox(
                width: 300.w,
                child: DropdownButtonFormField(
                    menuMaxHeight: Get.height.h * 0.3,
                    hint: Text(
                      "County*",
                      style: TextStyle(
                          fontSize: 14.sp, color: AppPaintings.kBlack),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 17.h),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffECECEC)),
                      ),
                    ),
                    iconEnabledColor: AppPaintings.themeGreenColor,
                    elevation: 0,
                    items: List.generate(
                      countyNames.length,
                      (index) => DropdownMenuItem(
                          value: countyNames[index],
                          child: Text(countyNames[index])),
                    ),
                    onChanged: (value) {
                      log(value.toString());
                    }),
              ),
              CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Post Code*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Site Name*",
                labelStyle: TextStyle(fontSize: 14.sp),
                hintStyle: TextStyle(fontSize: 14.sp),
                margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 2.h),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 38.w, vertical: 20),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Obx(() => Checkbox(
                              value: controller.isDefaultAddress.value,
                              onChanged: (value) {
                                controller.toggleDefaultAddress();
                              }))),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text("Save as default")
                    ],
                  )),
              SizedBox(
                height: 42.h,
                width: 300.w,
                child: LongButton(
                    buttonType: ButtonType.elevatedButton,
                    buttonText: "ADD ADDRESS",
                    onPressed: () {}),
              ),
              SizedBox(
                height: 20.h,
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
