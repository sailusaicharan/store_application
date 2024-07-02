import 'package:flutter/material.dart';
import 'package:upi_india/upi_india.dart';

class UpiPaymentPage extends StatefulWidget {
  @override
  _UpiPaymentPageState createState() => _UpiPaymentPageState();
}

class _UpiPaymentPageState extends State<UpiPaymentPage> {
  Future<UpiResponse>? _transaction;
  UpiIndia _upiIndia = UpiIndia();

  void initiateTransaction() {
    _transaction = _upiIndia.startTransaction(
      app: UpiApp.googlePay,
      receiverUpiId: "saicharan@upi",
      receiverName: "saicharan",
      transactionRefId: "CharanRefId",
      transactionNote: " Payment",
      amount: 1.00,
    );
    setState(() {});
  }

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
              onPressed: initiateTransaction,
              child: const Text('Pay with UPI'),
            ),
            const SizedBox(height: 16),
            // Other payment options
          ],
        ),
      ),
    );
  }
}
