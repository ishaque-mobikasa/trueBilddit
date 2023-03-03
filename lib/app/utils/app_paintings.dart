import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPaintings {
  static Color themeGreenTextColor = const Color(0xff6ECB44);
  static Color themeGreenColor = const Color(0xff6ECB44);
  static Color kBlack = Colors.black;
  static Color kWhite = Colors.white;
  static Color themeBlack = const Color(0xff252525);
  static Color themeLightBlack = const Color(0xff565656);

  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme:
        TextTheme(titleSmall: TextStyle(color: AppPaintings.themeGreenTextColor)),
    primarySwatch: Colors.green,
  );

  static TextStyle customLargeText = TextStyle(
    color: AppPaintings.kWhite,
    fontSize: 40,
    overflow: TextOverflow.ellipsis,
  );
}
