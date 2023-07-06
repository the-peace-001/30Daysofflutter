import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/cart.dart';
import 'package:flutter_application_1/Models/catalog.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatalogModel _catalog = (VxState.store as MyStore).catalog;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(StadiumBorder()),
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish)),
        onPressed: () {
          if (!isInCart) {
            // isInCart = isInCart.toggle();
            // _cart.catalog = _catalog;
            AddMutation(catalog);
            // setState(() {});
          }
        },
        child: isInCart
            ? Icon(Icons.done)
            : Icon(Icons.add_shopping_cart_outlined));
  }
}
