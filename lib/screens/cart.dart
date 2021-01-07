import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static final String id = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              'Cart Screen'
            ),
          ),
        ],
      ),
    );
  }
}
