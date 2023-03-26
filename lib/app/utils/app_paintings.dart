import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPaintings {
  static Color themeGreenTextColor = const Color(0xff6ECB44);
  static Color themeGreenColor = const Color(0xff6ECB44);
  static Color kBlack = Colors.black;
  static Color kWhite = Colors.white;
  static Color themeBlack = const Color(0xff252525);
  static Color themeLightBlack = const Color(0xff565656);
  static Color hintTextColor = const Color(0xff8F8F8F);
  static Color disabledColor = const Color(0xffF3F3F3);
  static Color dimWhite = const Color(0xffECECEC);
  static Color scaffoldBackgroundDimmed = const Color(0xffF6F6F6);
  static Color loginButtonBorderColor = const Color(0xffD9D9D9);
  static Color appRedColor = const Color(0xffEE4C4C);
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: TextTheme(
        titleSmall: TextStyle(color: AppPaintings.themeGreenTextColor)),
    primarySwatch: Colors.green,
  );

  static TextStyle customLargeText = TextStyle(
    color: AppPaintings.themeBlack,
    fontSize: 18.sp,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w800,
  );
  static TextStyle customSmallText = TextStyle(
    color: AppPaintings.themeLightBlack,
    fontSize: 12.sp,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w300,
  );
  static TextStyle textSpanStyle = TextStyle(
    color: AppPaintings.themeBlack,
    fontSize: 12.sp,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}
