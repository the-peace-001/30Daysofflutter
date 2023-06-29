import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';

//Main function - Starting point of program
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => HomePage(),
        // "/home": (context) => LogInPage(),
      },
    );
  }
}
