import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPaintings {
  static Color themeTextColor = const Color(0xff6ECB44);
  static Color themeColor = const Color(0xff6ECB44);
  static Color themeBlack = Colors.black;
  static Color themeWhite = Colors.white;

  static ThemeData appTheme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme:
        TextTheme(titleSmall: TextStyle(color: AppPaintings.themeTextColor)),
    primarySwatch: Colors.green,
  );

  static TextStyle customLargeText = TextStyle(
    color: AppPaintings.themeWhite,
    fontSize: 40,
    overflow: TextOverflow.ellipsis,
  );
}
