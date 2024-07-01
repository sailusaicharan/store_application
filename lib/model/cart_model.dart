import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String name;
  final double price;
  int quantity;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 1,
  });
}

class CartModel extends ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalPrice {
    return _items.fold(0, (total, item) => total + item.price * item.quantity);
  }

  // Method to add an item to the cart
  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  // Method to remove an item from the cart
  void removeItem(String itemId) {
    _items.removeWhere((item) => item.id == itemId);
    notifyListeners();
  }

  // Method to decrease quantity of an item in the cart
  void decreaseItemQuantity(String itemId) {
    final index = _items.indexWhere((item) => item.id == itemId);
    if (index != -1) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index); 
      }
      notifyListeners();
    }
  }

  // Method to increase quantity of an item in the cart
  void increaseItemQuantity(String itemId) {
    final index = _items.indexWhere((item) => item.id == itemId);
    if (index != -1) {
      _items[index].quantity++;
      notifyListeners();
    }
  }
}
