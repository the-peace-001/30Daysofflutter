import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: MyTheme.creamColor,
      primaryColor: darkBluish,
      focusColor: Colors.black,
      // buttonColor
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.lightBlue),
        titleTextStyle: TextStyle(
          color: Colors.lightBlue,
          fontSize: 18,
        ),
      )
      // primaryTextTheme: GoogleFonts.latoTextTheme()
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      // brightness: Brightness.dark
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      primaryColor: lightBluish,
      focusColor: lightGray,
      // buttonColor: lightBluish,
      appBarTheme: AppBarTheme(
        color: const Color.fromARGB(255, 50, 49, 49),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.lightBlue,
          fontSize: 18,
        ),
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray800;
  static Color lightGray = Vx.gray100;
  static Color darkBluish = Color.fromARGB(242, 5, 37, 143);
  static Color lightBluish = Color.fromARGB(255, 160, 190, 218);
}
