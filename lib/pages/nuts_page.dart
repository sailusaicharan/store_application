import 'package:flutter/material.dart';
import 'package:store_application/model/nuts_model.dart';
// import '../model/vegies_model.dart';

class NutsPage extends StatelessWidget {
  const NutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Nuts> nuts = [
      Nuts(name: 'Anjur', imagePath: 'assets/images/nuts/anjur.webp'),
      Nuts(name: 'Apricot', imagePath: 'assets/images/nuts/apricot.jpg'),
      Nuts(name: 'Cashews', imagePath: 'assets/images/nuts/cashews.webp'),
      Nuts(name: 'Dates', imagePath: 'assets/images/nuts/dates.jpg'),
      Nuts(name: 'Nuts', imagePath: 'assets/images/nuts/nuts.png'),
      Nuts(name: 'Peanuts', imagePath: 'assets/images/nuts/peanuts.jpg'),
      Nuts(name: 'Pecan', imagePath: 'assets/images/nuts/pecan.jpg'),
      Nuts(name: 'Pista', imagePath: 'assets/images/nuts/pista.jpg'),
      Nuts(name: 'Walnuts', imagePath: 'assets/images/nuts/Walnuts.jpg'), 
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuts'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: nuts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            final Nuts = nuts[index];
            return Card(
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Nuts.imagePath,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 25), 
                  Text(
                    Nuts.name,
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
