import 'package:flutter/material.dart';

class UtilityFunctions {
  static Color colorGeneratorFromHex({required String hexString}) {
    hexString = hexString.replaceAll('#', '');
    int r = int.parse(hexString.substring(0, 2), radix: 16);
    int g = int.parse(hexString.substring(2, 4), radix: 16);
    int b = int.parse(hexString.substring(4, 6), radix: 16);
    return Color.fromRGBO(r, g, b, 1);
  }
   static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
