import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_detail_pages.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

//Main function - Starting point of program
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      theme: MyTheme.lightTheme(context),
      // themeMode: ThemeMode.light,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/login": (context) => LogInPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LogInPage(),
        // MyRoutes.homeDetailRoute: (context) => HomeDetailPage()
        // "/home": (context) => HomePage(),
      },
    );
  }
}
