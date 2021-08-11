import 'package:master/models/catalog.dart';

class CartModel {
  //catalog field
  CatalogModel? _catalog;
  //Collection od ids -stor Ids of each item
  final List<int> _itemIds = [];
  //get Catalog
  CatalogModel? get catalogget => _catalog;

  set catalog(CatalogModel? newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get item in the cart
  List<Item>? get items => _itemIds.map((id) => _catalog!.getById(id)).toList();

  //GET toatal price
  num get totalprice =>
      items!.fold(0, (total, current) => total + current.price);

//Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }
//Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
