import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 1;

    final dummyList = List.generate(20, (index) => CatalogModels.item[0]);

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
          itemCount: dummyList.length,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
