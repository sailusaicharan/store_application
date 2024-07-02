import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String? selectedLocation;
  String displayedAddress = '';
  Color addressColor = Colors.black; // Default color for addresses
  Color addressBackgroundColor = Colors.purple.shade100; // Background color for addresses

  final Map<String, Map<String, dynamic>> addresses = {
    'Home': {
      'address': 'SVR building,Vengal Rao Nagar, \nS R Nagar,Hyderabad,Telenagana,500038',
      'color': Colors.white, // Color for Home address
    },
    'Office': {
      'address': ' Eenadu Corporate Building, Ramoji Film City, \nAnaspur Village, Abdullahpurmet, Hyderabad, \nTelangana 501512',
      'color': Colors.red, // Color for Office address
    },
    'Work': {
      'address': 'sunbright software solutions,srinvasreddy nagar,\ns r nagar,Hyderabad,Telangana 500038',
      'color': Colors.red, // Color for Work address
    },
    'Others': {
      'address': 'Charminar Rd, Char Kaman, \nGhansi Bazaar, Hyderabad, Telangana 500002',
      'color': Colors.white, // Color for Others address
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Location',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButtonFormField<String>(
              value: selectedLocation,
              hint: const Text('Select Option'),
              onChanged: (value) {
                setState(() {
                  selectedLocation = value;
                  displayedAddress = addresses[value]!['address'];
                  addressColor = addresses[value]!['color'];
                });
              },
              items: addresses.keys
                  .map((location) => DropdownMenuItem(
                        value: location,
                        child: Text(location),
                      ))
                  .toList(),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
            ),
          ),
          Expanded(
            child: Stack(
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
                if (displayedAddress.isNotEmpty)
                  Positioned(
                    bottom: 60,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: addressBackgroundColor,
                      child: Text(
                        displayedAddress,
                        style: TextStyle(
                          fontSize: 16,
                          color: addressColor, 
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
