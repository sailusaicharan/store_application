import 'package:flutter/material.dart';
import '../model/vegies_model.dart';

class VegeiesPage extends StatelessWidget {
  const VegeiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Vegetable> vegies = [
      Vegetable(name: 'Tomato', imagePath: 'assets/images/vegies/Tomato.png'),
      Vegetable(name: 'Beans', imagePath: 'assets/images/vegies/beans.jpg'),
      Vegetable(name: 'Beetroot', imagePath: 'assets/images/vegies/beetroot.jpg'),
      Vegetable(name: 'Bottle Gourd', imagePath: 'assets/images/vegies/bottle-gourd.jpg'),
      Vegetable(name: 'Brinjal', imagePath: 'assets/images/vegies/brinjal.jpg'),
      Vegetable(name: 'Broccoli', imagePath: 'assets/images/vegies/broccoli.jpeg'),
      Vegetable(name: 'Califlower', imagePath: 'assets/images/vegies/califlower.jpg'),
      Vegetable(name: 'Capsicum', imagePath: 'assets/images/vegies/capsicum.jpg'),
      Vegetable(name: 'Carrot', imagePath: 'assets/images/vegies/carrot.png'),
      Vegetable(name: 'Chills', imagePath: 'assets/images/vegies/chills.webp'),
      Vegetable(name: 'Cucumbar', imagePath: 'assets/images/vegies/cucumbar.jfif'),
      Vegetable(name: 'Drumstick', imagePath: 'assets/images/vegies/drumsticks.webp'),
      Vegetable(name: 'LadysFinder', imagePath: 'assets/images/vegies/LadyFinger.jpg'),
      Vegetable(name: 'Mushroom', imagePath: 'assets/images/vegies/mushroom.jfif'),
      Vegetable(name: 'Onion', imagePath: 'assets/images/vegies/onion.jpg'),
      Vegetable(name: 'Potato', imagePath: 'assets/images/vegies/potato.png'),
      Vegetable(name: 'Pumpkin', imagePath: 'assets/images/vegies/pumpkin.jpg'),
      Vegetable(name: 'Ridge Gourd', imagePath: 'assets/images/vegies/ridge gourd.jpg'),
      Vegetable(name: 'Spinach', imagePath: 'assets/images/vegies/spinach.jpg'),

      
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegies'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: vegies.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            final vegetable = vegies[index];
            return Card(
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    vegetable.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 25), 
                  Text(
                    vegetable.name,
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
