import 'package:flutter/material.dart';

import '../model/fruit_model.dart';

class FruitPage extends StatelessWidget {
  const FruitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final List<Fruit> fruits = [
      Fruit(name: 'Apple', imagePath: 'assets/images/fruits/Apple.png'),
      Fruit(name: 'Banana', imagePath: 'assets/images/fruits/banana.jpg'),
      Fruit(name: 'JackFruit', imagePath: 'assets/images/fruits/jackfruit.jpg'),
      Fruit(name: 'pineapple', imagePath: 'assets/images/fruits/pineapple.jpg'),
      Fruit(name: 'watermelon', imagePath: 'assets/images/fruits/watermelon.jpg'),
      Fruit(name: 'Dragon Fruit', imagePath: 'assets/images/fruits/dragon_fruit.jpg'),
      Fruit(name: 'grapes', imagePath: 'assets/images/fruits/grapes.jpg'),
      Fruit(name: 'orange', imagePath: 'assets/images/fruits/orange.jpg'),
      Fruit(name: 'papaya', imagePath: 'assets/images/fruits/papaya.jpg'),
      Fruit(name: 'strawberry', imagePath: 'assets/images/fruits/strawberry.png'),
      Fruit(name: 'kiwi', imagePath: 'assets/images/fruits/kiwi.jpg'),
      Fruit(name: 'Mango', imagePath: 'assets/images/fruits/mango.jpg'),
      Fruit(name: 'pomegranate', imagePath: 'assets/images/fruits/pomegranate.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fruits'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: fruits.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            final fruit = fruits[index];
            return Card(
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    fruit.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 35),
                  Text(
                    fruit.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
