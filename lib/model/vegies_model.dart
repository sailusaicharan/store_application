import 'package:flutter/material.dart';

// Define a simple Vegetable model
class Vegetable {
  final String name;
  final String imagePath;

  Vegetable({required this.name, required this.imagePath});
}

// A simple cart model to manage added vegetables
class CartModel extends ChangeNotifier {
  final List<Vegetable> _items = [];

  List<Vegetable> get items => List.unmodifiable(_items);

  void add(Vegetable vegetable) {
    _items.add(vegetable);
    notifyListeners();
  }
}