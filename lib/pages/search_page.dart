import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: [
         
        ],
        centerTitle: true,
        // Use a TextField in the AppBar for search input
        // You can customize the decoration as needed
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
              onChanged: (value) {
              },
              onSubmitted: (value) {
              },
            ),
          ),
        ),
      ),
      body:  Center(
        child: Icon(
  Icons.search,
  color: Colors.blue.withOpacity(0.2), 
  size: 60,
),

      ),
    );
  }
}
