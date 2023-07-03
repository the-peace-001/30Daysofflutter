// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/Models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/themes.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    final decodedData = jsonDecode(catalogJson);
    // print(decodedData);
    var productsData = decodedData["products"];
    // print(productsData);
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final int days = 1;

    // final dummyList = List.generate(20, (index) => CatalogModels.item[0]);

    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        // appBar: AppBar(
        //   title: Text(
        //     "Demo App",
        //   style: TextStyle(color: Colors.black),
        // ),
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black
        //   ),
        // ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        )

        //  Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        //       ? GridView.builder(
        //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //               crossAxisCount: 2,
        //               mainAxisSpacing: 15,
        //               crossAxisSpacing: 16),
        //           itemBuilder: (context, index) {
        //             final item = CatalogModel.items[index];
        //             return Card(
        //               clipBehavior: Clip.antiAlias,
        //               shadowColor: Colors.blueGrey,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               child: GridTile(
        //                 header: Container(
        //                     padding: const EdgeInsets.all(12),
        //                     decoration: BoxDecoration(color: Colors.blueAccent),
        //                     child: Text(
        //                       item.name,
        //                       style: TextStyle(
        //                           fontSize: 15, fontWeight: FontWeight.w600),
        //                     )),
        //                 footer: Container(
        //                     padding: const EdgeInsets.all(12),
        //                     decoration: BoxDecoration(color: Colors.blueAccent),
        //                     child: Text(
        //                       item.price.toString(),
        //                       style: TextStyle(
        //                           fontSize: 15, fontWeight: FontWeight.w600),
        //                     )),
        //                 child: Image.network(
        //                   item.image,
        //                 ),
        //               ),
        //             );
        //           },
        //           itemCount: CatalogModel.items.length,
        //         )
        //       // ListView.builder(
        //       //   itemBuilder: (context, index) {
        //       //     return ItemWidget(
        //       //       item: CatalogModel.items[index],
        //       //     );
        //       //   },
        //       //   itemCount: CatalogModel.items.length,
        //       // )
        //       : Center(
        //           child: CircularProgressIndicator(),
        //         ),
        // ),
        // drawer: MyDrawer(),
        );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Demo App".text.xl4.bold.color(MyTheme.darkBluish).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl.bold.color(MyTheme.darkBluish).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.lg.bold.make(),
                Container(
                    padding: EdgeInsets.only(right: 16),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(StadiumBorder()),
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkBluish)),
                        onPressed: () {},
                        child: "Buy".text.make()))
              ],
            )
          ],
        ))
      ],
    )).white.square(150).roundedLg.make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p16()
        .w32(context);
  }
}
