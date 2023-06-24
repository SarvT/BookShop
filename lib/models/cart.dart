import 'package:oneflut/models/items.dart';

class CartModel {
  late CatalogueModel _catalogue;

  final List<int> _itemIds = [];

  CatalogueModel get catalogueModel => _catalogue;

  set catalogueModel(CatalogueModel catalog) {
    assert(catalog != null);
    _catalogue = catalog;
  }

  List get items => _itemIds.map((Id) => _catalogue.getById(Id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void addItem(Item item) {
    _itemIds.add(item.id);
  }
  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}
