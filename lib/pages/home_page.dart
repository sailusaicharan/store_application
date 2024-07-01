import 'package:flutter/material.dart';

import '../model/fruit_product_model.dart';
import 'fruit_grid_view.dart';
import 'fruits_page.dart';
import 'nuts_page.dart';
import 'popularFruits.dart';
import 'popularnuts.dart';
import 'popularvegies.dart';
import 'vegeies_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FruitProduct> products = getAllProducts();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const FruitPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 110,
                            child: Card(
                              color: Colors.white,
                              elevation: 6.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/fruits/Apple.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Fruits',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const VegeiesPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 110,
                            child: Card(
                              color: Colors.white,
                              elevation: 6.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/vegies/Tomato.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Vegies',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const NutsPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 110,
                            child: Card(
                              color: Colors.white,
                              elevation: 6.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/nuts/nuts.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Nuts',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // "Popular Fruits" Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Fruits",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to a new page showing all products
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    title: Text("All Products"),
                                  ),
                                  body: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.7,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                    ),
                                    itemCount: products.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return FruitProductCard(product: products[index]);
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "See all",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    PopularFruits(),
                    const SizedBox(height: 20),

                    // "Popular Vegies" Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular Vegies",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         GestureDetector(
                          onTap: () {
                            // Navigate to a new page showing all products
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Scaffold(
                                  appBar: AppBar(
                                    title: Text("All Products"),
                                  ),
                                  body: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 0.7,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                    ),
                                    itemCount: products.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return FruitProductCard(product: products[index]);
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "See all",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    PopularVegies(),
                    const SizedBox(height: 20),

                    // "Popular Nuts" Section
                    const Text(
                      "Popular Nuts",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    PopularNuts(),
                  ],
                ),
              ),
            ),
          ),

          // GridView for All Products
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: GridView.builder(
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         childAspectRatio: 0.7,
          //         crossAxisSpacing: 10.0,
          //         mainAxisSpacing: 10.0,
          //       ),
          //       itemCount: products.length,
          //       itemBuilder: (BuildContext context, int index) {
          //         return FruitProductCard(product: products[index]);
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
