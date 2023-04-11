import 'dart:developer';

import 'package:get/get.dart';
import 'package:truebildit/data/models/product_model.dart';

class FeedBackController extends GetxController {
  final Rx<bool> isRatingCompleted = false.obs;
  final RxInt selectedIndex = 0.obs;
  void onRatingCompleted(double rating) {
    if (rating > 0) {
      isRatingCompleted.value = true;
      log("Rating,showing review: $rating");
    } else {
      log("Not showing review: $rating");
      isRatingCompleted.value = false;
      selectedIndex.value = 0;
    }
  }

  void chooseButton(int index) {
    selectedIndex.value = index;
  }

  void onProductRated(ProductModel product, double rating) {
    log("Product rated: ${product.title}");
    log("Product rated: ${rating.toString()}");
  }
}
