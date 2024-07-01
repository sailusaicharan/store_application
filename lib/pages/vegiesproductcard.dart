import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application/model/cart_model.dart';

import '../model/fruit_product_model.dart';

class VegiesProductCard extends StatelessWidget {
  final FruitProduct product;

  const VegiesProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Card(
        color: Colors.white,
        elevation: 6.0,
        margin: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  product.imagePath,
                  height: 90,
                  width: 90,
                ),
                const SizedBox(height: 5),
                Text(
                  product.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Price: ",
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    final cart = Provider.of<CartModel>(context, listen: false);
                    final item = CartItem(
                      id: product.title, 
                      name: product.title,
                      price: product.price,
                      quantity: 1,
                    );
                    cart.addItem(item);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${product.title} added to cart'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Container(
                    height: 35,
                    width: 100,
                    child: const Card(
                      color: Colors.blue,
                      child: Center(child: Text("Add", style: TextStyle(color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
