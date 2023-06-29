import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App",),

      ),
      // drawer: Drawer(),
      body:
          Center(child: Text("Hello There! I am learing flutter Day - $days")),
    );
  }
}
