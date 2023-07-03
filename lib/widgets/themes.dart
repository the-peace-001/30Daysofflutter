import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
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
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluish = Color.fromARGB(242, 5, 37, 143);
}
