class Vegetable {
  final String name;
  final String imagePath;

  Vegetable({required this.name, required this.imagePath});

  static List<Vegetable> vegies = [
    Vegetable(name: 'Tomato', imagePath: 'assets/images/vegies/Tomato.png'),
    Vegetable(name: 'Beans', imagePath: 'assets/images/vegies/beans.jpg'),
    Vegetable(name: 'beetroot', imagePath: 'assets/images/vegies/beetroot.jpg'),
    Vegetable(name: 'bottle-gourd', imagePath: 'assets/images/vegies/bottle-gourd.jpg'),
    Vegetable(name: 'brinjal', imagePath: 'assets/images/vegies/brinjal.jpg'),
    Vegetable(name: 'broccoli', imagePath: 'assets/images/vegies/broccoli.jpeg'),
    Vegetable(name: 'califlower', imagePath: 'assets/images/vegies/califlower.jpg'),
    Vegetable(name: 'capsicum', imagePath: 'assets/images/vegies/capsicum.jpg'),
    Vegetable(name: 'carrot', imagePath: 'assets/images/vegies/carrot.png'),
    Vegetable(name: 'chills', imagePath: 'assets/images/vegies/chills.webp'),
    Vegetable(name: 'cucumbar', imagePath: 'assets/images/vegies/cucumbar.jfif'),
    Vegetable(name: 'drumsticks', imagePath: 'assets/images/vegies/drumsticks.webp'),
    Vegetable(name: 'LadyFinger', imagePath: 'assets/images/vegies/LadyFinger.jpg'),
    Vegetable(name: 'mushroom', imagePath: 'assets/images/vegies/mushroom.jfif'),
    Vegetable(name: 'onion', imagePath: 'assets/images/vegies/onion.jpg'),
    Vegetable(name: 'potato', imagePath: 'assets/images/vegies/potato.png'),
    Vegetable(name: 'pumpkin', imagePath: 'assets/images/vegies/pumpkin.jpg'),
    Vegetable(name: 'ridge gourd', imagePath: 'assets/images/vegies/ridge gourd.jpg'),
    Vegetable(name: 'spinach', imagePath: 'assets/images/vegies/spinach.jpg'),
    // Add other vegetables here
  ];
}











// import 'package:flutter/material.dart';

// // Define a simple Vegetable model
// class Vegetable {
//   final String name;
//   final String imagePath;

//   Vegetable({required this.name, required this.imagePath});
// }

// // A simple cart model to manage added vegetables
// class CartModel extends ChangeNotifier {
//   final List<Vegetable> _items = [];

//   List<Vegetable> get items => List.unmodifiable(_items);

//   void add(Vegetable vegetable) {
//     _items.add(vegetable);
//     notifyListeners();
//   }
// }