import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppPaintings {
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
  static Color shippingCardSelectedColor = const Color(0xffF5FDF1);
  static Color carousalImageStarColor = const Color(0xffB7B7B7);
  static Color pdpQuantityBorderColor = const Color(0xffDCDCDC);
  static Color pdpButtonBorderColor = const Color(0xffBABABA);
  static Color productTileImgBckgrndClr = const Color(0xffF8F8F8);
  static Color feedBackScreenBackgroundColor = const Color(0xffF5F5F5);

  static Color starRatingEmptyColor = const Color(0xffBFBFBF);
  static ThemeData appTheme = ThemeData(
    dividerColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme:
        TextTheme(titleSmall: TextStyle(color: AppPaintings.themeGreenColor)),
    primarySwatch: Colors.green,
  );

  static TextStyle customLargeText = TextStyle(
    color: AppPaintings.themeBlack,
    fontSize: 18.sp,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
  );
  static TextStyle customSmallText = TextStyle(
      color: AppPaintings.themeLightBlack,
      fontSize: 12.sp,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w300,
      fontFamily: GoogleFonts.montserrat().fontFamily);
  static TextStyle textSpanStyle = TextStyle(
    color: AppPaintings.themeBlack,
    fontSize: 12.sp,
    overflow: TextOverflow.ellipsis,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}
