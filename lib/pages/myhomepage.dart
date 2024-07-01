import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application/model/cart_model.dart';
import 'package:store_application/pages/fruits_page.dart';
import 'package:store_application/pages/home_page.dart';
import 'package:store_application/pages/location_page.dart';
import 'package:store_application/pages/profile_page.dart';
import 'package:store_application/pages/search_page.dart';
import 'package:store_application/pages/notification_page.dart';
import 'package:store_application/pages/cart_page.dart';
import '../model/notification_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    const SearchPage(),
    const LocationPage(),
    const ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/boo.png',
            width: 35,
            height: 35,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            _onTabTapped(3);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.blue, Colors.green, Colors.yellow, Colors.red],
                  stops: [0.0, 0.33, 0.66, 1.0],
                ).createShader(bounds),
                child: const Text(
                  'Hello Saicharan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // This color is overridden by the gradient
                  ),
                ),
              ),
              Text(
                "Welcome to grocery store",
                style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade400),
              ),
            ],
          ),
        ),
        actions: [
          Consumer<NotificationModel>(
            builder: (context, model, _) => IconButton(
              icon: const Icon(Icons.notifications, color: Colors.blue),
              onPressed: () {
                // Example of using NotificationModel
                model.incrementNotificationCount();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NotificationPage()),
                );
              },
            ),
          ),
          Consumer<CartModel>(
            builder: (context, cart, _) => IconButton(
              icon: const Icon(Icons.shopping_cart_checkout_sharp, color: Colors.blue),
              onPressed: () {
                // Example of using CartModel
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
