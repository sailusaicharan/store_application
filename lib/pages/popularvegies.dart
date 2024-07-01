import 'package:flutter/material.dart';

class PopularVegies extends StatelessWidget {
  const PopularVegies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 180,
            width: 300,
            child: Card(
              color: Colors.white,
              elevation: 6.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Image.asset(
                      'assets/images/vegies/beans.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Beans',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(
                            Icons.local_fire_department_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          Text(
                            '60 Calories',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Text(
                            'Benfits :',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Vitamin-C',
                            style: TextStyle(
                                fontSize: 16, color: Colors.orange),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            child: Card(
                              color: Colors.yellow.shade100,
                              child: Center(
                                  child: Text(
                                "Unit",
                                style: TextStyle(
                                    color: Colors.orange.shade600),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "\$",
                            style: TextStyle(
                                color: Colors.red, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "3.2",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            height: 180,
            width: 300,
            child: Card(
              color: Colors.white,
              elevation: 6.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Image.asset(
                      'assets/images/vegies/mushroom.jfif',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'mushroom',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(
                            Icons.local_fire_department_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          Text(
                            '90 Calories',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Text(
                            'Benfits :',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'dietary fiber',
                            style: TextStyle(
                                fontSize: 16, color: Colors.green),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            child: Card(
                              color: Colors.yellow.shade100,
                              child: Center(
                                  child: Text(
                                "Unit",
                                style: TextStyle(
                                    color: Colors.orange.shade600),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "\$",
                            style: TextStyle(
                                color: Colors.red, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "6.2",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            height: 180,
            width: 300,
            child: Card(
              color: Colors.white,
              elevation: 6.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Image.asset(
                      'assets/images/vegies/pumpkin.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pumpkin',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(
                            Icons.local_fire_department_rounded,
                            color: Colors.orange,
                            size: 35),
                          Text(
                            '32 Calories',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                       Row(
                        children: [
                          Text(
                            'Benfits :',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'vitamin B9',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red.shade600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            child: Card(
                              color: Colors.yellow.shade100,
                              child: Center(
                                  child: Text(
                                "Unit",
                                style: TextStyle(
                                    color: Colors.orange.shade600),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "\$",
                            style: TextStyle(
                                color: Colors.red, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "9.2",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            height: 180,
            width: 300,
            child: Card(
              color: Colors.white,
              elevation: 6.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Image.asset(
                      'assets/images/vegies/Tomato.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tomato',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Icon(
                            Icons.local_fire_department_rounded,
                            color: Colors.orange,
                            size: 35,
                          ),
                          Text(
                            '132 Calories',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            'Benfits :',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Vitamin-E&C',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.deepPurple.shade400),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            child: Card(
                              color: Colors.yellow.shade100,
                              child: Center(
                                  child: Text(
                                "Unit",
                                style: TextStyle(
                                    color: Colors.orange.shade600),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "\$",
                            style: TextStyle(
                                color: Colors.red, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "8.0",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    
        ],
      ),
    );
  }
}

