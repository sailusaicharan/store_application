import 'package:flutter/material.dart';
import 'package:store_application/pages/nutsproductcard.dart';
import 'dart:async';

import '../model/fruit_product_model.dart';
import '../model/nuts_product_model.dart';
import 'fruit_grid_view.dart';
import 'popularFruits.dart';
import 'popularnuts.dart';
import 'popularvegies.dart';
import '../model/vegies_product_model.dart';
import 'vegiesproductcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> _images = [
    'assets/banners/fruit_banner.png',
    'assets/banners/fruit-shop-banner.jpg',
    'assets/banners/vegetabeles_with_health_banner.webp',
    'assets/banners/vegetable-banner.webp',
    'assets/banners/fresh-vegetables-banner.jpg',
    'assets/banners/farm-fresh-vegetables-vector-banner.webp',
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = _currentPage + 1;
        if (nextPage >= _images.length) {
          nextPage = 0;
        }
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
        setState(() {
          _currentPage = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<FruitProduct> products = getAllProducts();
    List<VegiesProduct> vegies = getAllVegies();
    List<NutsProduct> Nuts = getAllNuts();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemCount: _images.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Image.asset(_images[index], fit: BoxFit.cover),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(_images.length, (index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 10),
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            height: 10.0,
                            width: _currentPage == index ? 12.0 : 8.0,
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? Colors.blue
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            appBar: AppBar(
                              title: const Text("All Products"),
                            ),
                            body: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    child: const Text(
                      "See all",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const PopularFruits(),
              const SizedBox(height: 20),
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            appBar: AppBar(
                              title: const Text("All Vegies"),
                            ),
                            body: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                              ),
                              itemCount: vegies.length,
                              itemBuilder: (BuildContext context, int index) {
                                return VegiesProductCard(product: vegies[index]);
                              },
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const PopularVegies(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Nuts",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            appBar: AppBar(
                              title: const Text("All Nuts"),
                            ),
                            body: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                              ),
                              itemCount: Nuts.length,
                              itemBuilder: (BuildContext context, int index) {
                                return NutsProductCard(product: Nuts[index]);
                              },
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const PopularNuts(),
            ],
          ),
        ),
      ),
    );
  }
}
