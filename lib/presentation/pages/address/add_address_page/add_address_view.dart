import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
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
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              SizedBox(
                  width: Get.width * 0.9,
                  child: Text(
                    "Contact Information",
                    style: AppPaintings.customLargeText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppPaintings.themeBlack),
                  )),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                type: FieldType.normalInputField,
                hintText: "First Name*",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Last Name*",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Company (Optional)",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Phone Number*",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: Get.width * 0.9,
                  child: Text(
                    "Address",
                    style: AppPaintings.customLargeText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppPaintings.themeBlack),
                  )),
              const CustomFormField(
                type: FieldType.normalInputField,
                hintText: "Street Address*",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const CustomFormField(
                type: FieldType.phoneNumber,
                hintText: "Post Code*",
                labelStyle: TextStyle(fontSize: 14),
                hintStyle: TextStyle(fontSize: 14),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width * 0.92,
                child: CSCPicker(
                  selectedItemStyle:
                      TextStyle(color: AppPaintings.themeBlack, fontSize: 14),
                  flagState: CountryFlag.DISABLE,
                  dropdownDecoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: AppPaintings.dimWhite)),
                  ),
                  disabledDropdownDecoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: AppPaintings.dimWhite)),
                  ),
                  cityDropdownLabel: "Town/City*",
                  layout: Layout.vertical,
                  onCountryChanged: (value) => controller.changeCountry(value),
                  onStateChanged: (value) =>
                      controller.changeState(value.toString()),
                  onCityChanged: (value) =>
                      controller.changeCity(value.toString()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: Get.width * 0.9,
                  child: Text(
                    "Type of Address*",
                    style: AppPaintings.customLargeText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppPaintings.themeBlack),
                  )),
              const SizedBox(
                height: 20,
              ),
              LongButton(
                  buttonType: ButtonType.elevatedButton,
                  buttonText: "ADD ADDRESS",
                  onPressed: () {})
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.065,
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => {},
            ),
            title: const Text(
              'Add New Address',
            ),
          ),
        ),
      ],
    );
  }
}
