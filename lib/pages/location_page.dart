import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Center(child: Text('Location ',style: TextStyle(color: Colors.red),)),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.blue.withOpacity(0.2),
              size: 60,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Icon(
              Icons.location_city,
              color: Colors.red.withOpacity(0.5),
              size: 30,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Icon(
              Icons.location_off,
               color: Colors.red.withOpacity(0.5),
              size: 30,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Icon(
              Icons.my_location,
               color: Colors.red.withOpacity(0.5),
              size: 30,
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Icon(
              Icons.person_pin_circle,
              color: Colors.red.withOpacity(0.5),
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
