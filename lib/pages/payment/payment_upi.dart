import 'package:flutter/material.dart';

import 'payment_successful.dart';

class SelectUPIAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select UPI App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Initiate UPI transaction with PhonePe
                initiateUPIPayment(context, 'PhonePe');
              },
              child: const Text('PhonePe'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Initiate UPI transaction with Google Pay
                initiateUPIPayment(context, 'Google Pay');
              },
              child: const Text('Google Pay'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Initiate UPI transaction with Paytm
                initiateUPIPayment(context, 'Paytm');
              },
              child: const Text('Paytm'),
            ),
          ],
        ),
      ),
    );
  }

  void initiateUPIPayment(BuildContext context, String app) {
    // Implement your UPI payment logic here based on the selected app
    // For demonstration, let's just print the selected app
    print('Initiating UPI payment with $app');

    // You can implement actual UPI payment integration here
    // Example: Redirect to UPI payment URL or use UPI India SDK
    // For simplicity in this example, we'll just navigate back to PaymentPage
    Navigator.of(context).pop(); // Close SelectUPIAppPage
    // Navigate to PaymentSuccessPage after successful payment
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => PaymentSuccessPage(amount: 100.0), // Replace with your logic
      ),
    );
  }
}

