import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxInt selectedCardIndex = 0.obs;
  onCardSelected(int index) {
    selectedCardIndex.value != index ? selectedCardIndex.value = index : null;
  }
}
