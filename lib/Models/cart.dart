import 'package:flutter_application_1/Models/catalog.dart';

class CartModel {
  //Catalog fields
  late CatalogModel _catalog;

  // collection of IDs
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set Catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add items
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
