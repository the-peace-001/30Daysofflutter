import "package:flutter/material.dart";
import "package:flutter_application_1/Models/catalog.dart";

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      elevation: 1,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.imgURL),
        title: Text(item.name),
        subtitle: Text(item.desc),
        // tileColor: Color.fromARGB(255, 232, 231, 226),
        trailing: Text(
          /*item.price.toString()*/ "\$ ${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
