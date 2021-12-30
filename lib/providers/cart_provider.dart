import 'package:flutter/foundation.dart';

class CartItem{
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price
  });
}



class CartProvider with ChangeNotifier{
final Map<String, CartItem> _items = {};

Map<String, CartItem> get items{
    return{..._items};
  }

  int get itemCount {
    return _items.length;
  }

void addItem (
  String itemId,
  String title,
  double price,

){
  if(_items.containsKey(itemId))
  {
    //change Qualtity//
  _items.update(
    itemId.toString(), (existingCartItem) => CartItem(
      id: existingCartItem.id,
      title: existingCartItem.title,
      price: existingCartItem.price,
      quantity: existingCartItem.quantity+1,
      )
    );
  }else{
    _items.putIfAbsent(
      itemId.toString(), () => CartItem(
        id: itemId.toString(),
        title: title,
        price: price,
        quantity: 1,
        )
      );
  }
  notifyListeners();

}

removeItem(String itemId){
  _items.remove(itemId);
  notifyListeners();
}
}