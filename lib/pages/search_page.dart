import 'package:flutter/material.dart';
import 'package:store_application/model/fruit_model.dart';
import 'package:store_application/model/vegies_model.dart';
import 'package:store_application/model/nuts_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String query = '';
  List<dynamic> allItems = [];

  @override
  void initState() {
    super.initState();
    // Initialize items from each model
    allItems = [
      ...Fruit.fruits, 
      ...Vegetable.vegies, 
      ...Nuts.nuts
    ];
  }

  List<dynamic> searchItems(String query) {
    query = query.toLowerCase();
    return allItems.where((item) => item.name.toLowerCase().contains(query)).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> searchResults = searchItems(query);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              onSubmitted: (value) {
                setState(() {
                  query = value;
                });
              },
            ),
          ),
        ),
      ),
      body: searchResults.isEmpty
          ? Center(child: Text('Product not found.'))
          : ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                var item = searchResults[index];
                return ListTile(
                  leading: Image.asset(
                    item.imagePath,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(item.name),
                  onTap: () {
                    // Implement navigation to item details page if needed
                  },
                );
              },
            ),
    );
  }
}
