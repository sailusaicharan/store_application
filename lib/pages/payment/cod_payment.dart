import 'package:flutter/material.dart';

class CashOnDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash on Delivery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your order has been placed with Cash on Delivery',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '🚚', // Delivery truck emoji
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}

