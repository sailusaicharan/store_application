import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Icon(
  Icons.person_4_outlined,
  color: Colors.blue.withOpacity(0.2), 
  size: 60,
      ),
    ),
    );
  }
}
