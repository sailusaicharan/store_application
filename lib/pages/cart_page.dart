import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application/model/cart_model.dart';
import 'package:store_application/pages/payment/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.items.isEmpty
                ? Center(
                    child: Image.asset(
                    'assets/images/empty.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ))
                : ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text('\$${item.price}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Provider.of<CartModel>(context, listen: false)
                                    .decreaseItemQuantity(item.id);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red[300],
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Icon(Icons.remove),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text('${item.quantity}',
                                style: const TextStyle(fontSize: 18)),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                Provider.of<CartModel>(context, listen: false)
                                    .increaseItemQuantity(item.id);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red[300],
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ${cart.items.isNotEmpty ? '\$${cart.totalPrice.toStringAsFixed(2)}' : '\$0.00'}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
               ElevatedButton(
  onPressed: () {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PaymentPage(),
      ),
    );
  },
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
  ),
  child: const Text('Proceed to Payment'),
),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
