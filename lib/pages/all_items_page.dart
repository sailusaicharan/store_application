import 'package:flutter/material.dart';

class AllItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 90),
          child: Text('All Items'),
        ),
      ),
      body: const Center(
        child: Icon(Icons.run_circle,color: Colors.blue, size: 100),
      ),
    );
  }
}
