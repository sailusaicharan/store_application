import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_application/model/cart_model.dart';
import 'package:store_application/model/notification_model.dart';
import 'package:store_application/pages/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NotificationModel()),
        ChangeNotifierProvider(create: (context) => CartModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}
