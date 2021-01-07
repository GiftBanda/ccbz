import 'package:ccbz/screens/Beverages.dart';
import 'package:ccbz/screens/notification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ccbz/screens/home_screen.dart';
import 'package:ccbz/screens/cart.dart';

void main() => runApp(CocaCola());

class CocaCola extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coca cola beverages zambia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/notification': (context) => NotificationScreen(),
        Beverages.id: (context) => Beverages(),
        CartScreen.id: (context) => CartScreen()
      },
    );
  }
}
