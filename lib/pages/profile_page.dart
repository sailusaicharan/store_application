import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Icon(
              Icons.person_outline,
              color: Colors.blue.withOpacity(0.5),
              size: 200,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(16),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      _buildMenuItem(Icons.shopping_bag_outlined, 'Orders', context),
                      _buildMenuItem(Icons.location_on_outlined, 'Addresses', context),
                      _buildMenuItem(Icons.settings_outlined, 'Settings', context),
                       _buildMenuItem(Icons.help_outline, 'Help Center', context),
                      //  _buildMenuItem(Icons.reviews, 'Review', context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement navigation or action for each menu item
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
