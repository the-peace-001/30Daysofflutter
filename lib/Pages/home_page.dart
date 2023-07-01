import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo App",
          //   style: TextStyle(color: Colors.black),
          // ),
          // backgroundColor: Colors.white,
          // elevation: 0.0,
          // iconTheme: IconThemeData(color: Colors.black
        ),
      ),
      drawer: MyDrawer(),
      body:
          Center(child: Text("Hello There! I am learing flutter Day - $days")),
    );
  }
}
