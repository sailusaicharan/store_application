

class Fruit {
  final String name;
  final String imagePath;

  Fruit({required this.name, required this.imagePath});

  static List<Fruit> fruits = [
    Fruit(name: 'Apple', imagePath: 'assets/images/fruits/Apple.png'),
    Fruit(name: 'Banana', imagePath: 'assets/images/fruits/banana.jpg'),
    Fruit(name: 'dragon_fruit', imagePath: 'assets/images/fruits/dragon_fruit.jpg'),
    Fruit(name: 'grapes', imagePath: 'assets/images/fruits/grapes.jpg'),
    Fruit(name: 'jackfruit', imagePath: 'assets/images/fruits/jackfruit.jpg'),
    Fruit(name: 'kiwi', imagePath: 'assets/images/fruits/kiwi.jpg'),
    Fruit(name: 'mango', imagePath: 'assets/images/fruits/mango.jpg'),
    Fruit(name: 'orange', imagePath: 'assets/images/fruits/orange.jpg'),
    Fruit(name: 'papaya', imagePath: 'assets/images/fruits/papaya.jpg'),
    Fruit(name: 'pineapple', imagePath: 'assets/images/fruits/pineapple.jpg'),
    Fruit(name: 'pomegranate', imagePath: 'assets/images/fruits/pomegranate.png'),
    Fruit(name: 'strawberry', imagePath: 'assets/images/fruits/strawberry.png'),
    Fruit(name: 'promagrate1', imagePath: 'assets/images/fruits/promagrate1.png'),
    Fruit(name: 'watermelon', imagePath: 'assets/images/fruits/watermelon.jpg'),
    
    // Add other fruits here
  ];
}






















// import 'package:flutter/material.dart';

// // Define a simple Fruit model
// class Fruit {
//   final String name;
//   final String imagePath;

//   Fruit({required this.name, required this.imagePath});
// }

// // A simple cart model to manage added Fruits
// class CartModel extends ChangeNotifier {
//   final List<Fruit> _items = [];

//   List<Fruit> get items => List.unmodifiable(_items);

//   void add(Fruit Fruit) {
//     _items.add(Fruit);
//     notifyListeners();
//   }
// }