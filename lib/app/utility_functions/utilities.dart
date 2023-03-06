import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
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

  static Future<String> imageStringFromFile(File imageFile) async {
    Uint8List imagebytes = await imageFile.readAsBytes();
    return base64.encode(imagebytes);
  }

  static Future<File> imageStringToFile(String imageFile) async {
    Uint8List decodedbytes = base64.decode(imageFile);
    return File.fromRawPath(decodedbytes);
  }
}
