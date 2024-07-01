import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
        title: const Text(''),
      ),
      body:  Center(
        child:  Icon(
  Icons.notifications,
  color: Colors.blue.withOpacity(0.2), 
  size: 100,
        
      ),
    ),
    );
  }
}