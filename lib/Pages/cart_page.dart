import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/cart.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.xl2.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  // const _CartTotal({super.key});

  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        '\$${_cart.totalPrice}'.text.xl3.color(Colors.black).make(),
        30.widthBox,
        ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buying not supported yet!".text.make()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluish)),
                child: "Buy Now".text.color(Colors.white).make())
            .w32(context),
      ]),
    );
  }
}

class _CartList extends StatelessWidget{
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing to show"
            .text
            .xl2
            .color(Color.fromARGB(255, 106, 100, 100))
            .makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  // setState(() {});
                },
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
