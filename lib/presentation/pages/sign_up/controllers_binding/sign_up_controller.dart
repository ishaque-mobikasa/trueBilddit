import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:truebildit/app/utility_functions/place_holder_image.dart';
import 'package:truebildit/app/utility_functions/utilities.dart';

class SignUpController extends GetxController {
  Rx<XFile>? image;
  RxString pickedImage = ''.obs;
  RxBool isPrivacyAccepted = false.obs;
  onImagePickButtonClick() async {
    XFile? imageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imageFile == null) {
      return;
    } else {
      pickedImage.value =
          await UtilityFunctions.imageStringFromFile(File(imageFile.path));
    }
  }

  @override
  void onInit() async {
    pickedImage.value = placeHolder;
    super.onInit();
  }

  onPrivacyToggler(bool value) {
    isPrivacyAccepted.value = !isPrivacyAccepted.value;
  }
}
