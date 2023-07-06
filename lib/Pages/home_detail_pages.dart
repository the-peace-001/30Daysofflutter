// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_1/Models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catalog.name),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.only(left: 20, right: 20),
        children: [
          "\$${catalog.price}".text.xl.bold.make(),
          AddToCart(catalog: catalog).wh(120, 40)
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Container(
            height: 300,
            child: Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .p12(),
          ),
          Expanded(
            child: VxArc(
              height: 30.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                width: context.screenWidth,
                color: Colors.white,
                child: Column(children: [
                  catalog.name.text.xl2.bold.color(MyTheme.darkBluish).make(),
                  catalog.desc.text.lg.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  "Molestias dolorum molestias unde eaque dicta Nihil aut sit Nihil optio corrupti aut Ullam hic numquam qui aut aliquam expedita earum et"
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p20(),
                ]).py32(),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
