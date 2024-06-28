import 'package:flutter/material.dart';

class MyTheme {
  /// colors
  static Color primaryLight = Color(0xff39A552);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color redColor = Color(0xffEC4B4B);
  static Color darkBlueColor = Color(0xff003E90);
  static Color pinkColor = Color(0xffED1E79);
  static Color brownColor = Color(0xffCF7E48);
  static Color blueColor = Color(0xff4882CF);
  static Color yellowColor = Color(0xffF2D352);
  static Color grayColor = Color(0xff42505C);
  static Color blackColor = Color(0xff303030);

  //////////////////////////////////////////////////////////////////////////////
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      appBarTheme: AppBarTheme(
          backgroundColor: primaryLight,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)))),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, color: blackColor),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: whiteColor),
      ));
}
