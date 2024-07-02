import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'cod_payment.dart';
import 'payment_successful.dart';
import 'payment_upi.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  bool scanning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SelectUPIAppPage(),
                  ),
                );
              },
              child: const Text('Pay with UPI'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CashOnDeliveryPage(),
                  ),
                );
              },
              child: const Text('Cash on Delivery'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PaymentCardSelectionPage(),
                  ),
                );
              },
              child: const Text('Pay with Card'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  scanning = !scanning; 
                });
              },
              child: const Text('Scan to Pay'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: scanning
                  ? QRView(
                      key: qrKey,
                      onQRViewCreated: _onQRViewCreated,
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/scanner.jpeg"),
                          SizedBox(height: 10),
                          Text('Scan a QR code to proceed with payment.'),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      // Handle the scanned QR code data here
      print('Scanned data: ${scanData.code}');
      
      // Implement your payment logic using the scanned data
      // For example, navigate to a success page or process payment
      
      // For demonstration, let's assume after scanning, we navigate to a success page
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => PaymentSuccessPage(amount: 100.0), // Replace with your logic
        ),
      );
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

class PaymentCardSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Payment Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle Visa card payment
                initiateCardPayment(context, 'Visa Card');
              },
              child: const Text('Visa Card'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle MasterCard payment
                initiateCardPayment(context, 'MasterCard');
              },
              child: const Text('MasterCard'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle other card payment
                initiateCardPayment(context, 'Other Card');
              },
              child: const Text('Other Card'),
            ),
          ],
        ),
      ),
    );
  }

  void initiateCardPayment(BuildContext context, String cardType) {
    // Implement your card payment logic here based on the selected card type
    // For demonstration, let's just print the selected card type
    print('Initiating payment with $cardType');

    // You can implement actual card payment integration here
    // Example: Redirect to payment gateway or initiate payment process
    // For simplicity in this example, we'll just navigate back to PaymentPage
    Navigator.of(context).pop(); // Close PaymentCardSelectionPage
    // Navigate to PaymentSuccessPage after successful payment
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => PaymentSuccessPage(amount: 100.0), // Replace with your logic
      ),
    );
  }
}

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

class PaymentSuccessPage extends StatelessWidget {
  final double amount;

  const PaymentSuccessPage({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 100),
            const SizedBox(height: 16),
            Text(
              'Payment of \$${amount.toStringAsFixed(2)} successful!',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
