class Nuts {
  final String name;
  final String imagePath;

  Nuts({required this.name, required this.imagePath});

  static List<Nuts> nuts = [
    Nuts(name: 'Anjur', imagePath: 'assets/images/nuts/anjur.webp'),
    Nuts(name: 'Apricot', imagePath: 'assets/images/nuts/apricot.jpg'),
    Nuts(name: 'cashews', imagePath: 'assets/images/nuts/cashews.webp'),
    Nuts(name: 'dates', imagePath: 'assets/images/nuts/dates.jpg'),
    Nuts(name: 'nuts', imagePath: 'assets/images/nuts/nuts.png'),
    Nuts(name: 'peanuts', imagePath: 'assets/images/nuts/peanuts.jpg'),
    Nuts(name: 'pecan', imagePath: 'assets/images/nuts/pecan.jpg'),
    Nuts(name: 'pista', imagePath: 'assets/images/nuts/pista.jpg'),
    Nuts(name: 'Walnuts', imagePath: 'assets/images/nuts/Walnuts.jpg'),
    // Add other nuts here
  ];
}















// import 'package:flutter/material.dart';

// // Define a simple Vegetable model
// class Nuts {
//   final String name;
//   final String imagePath;

//   Nuts({required this.name, required this.imagePath});
// }

// // A simple cart model to manage added vegetables
// class CartModel extends ChangeNotifier {
//   final List<Nuts> _items = [];

//   List<Nuts> get items => List.unmodifiable(_items);

//   void add(Nuts nuts) {
//     _items.add(nuts);
//     notifyListeners();
//   }
// }