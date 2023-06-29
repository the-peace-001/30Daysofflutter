import 'package:flutter/material.dart';

//Main function - Starting point of program
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(child: Text("Hello There! I am learing flutter")),
      ),
    );
  }
}
