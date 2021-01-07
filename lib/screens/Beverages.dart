import 'package:ccbz/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:ccbz/models/drinks.dart';

class Beverages extends StatefulWidget {
  static final String id = '/beverages';

  @override
  _BeveragesState createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, CartScreen.id);
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.shopping_cart
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            height: 150.0,
            child: Image(
              image: AssetImage('assets/images/coke.png'),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200.0,
                child: Drinks(
                  image: AssetImage('assets/images/cancoke.png'),
                  drinkName: 'Can Coke 350ml',
                  drinkPrice: 'zmk 100',
                ),
              ),
              SizedBox(width: 4.0,),
              Container(
                height: 200.0,
                child: Drinks(
                  image: AssetImage('assets/images/bigcoke.png'),
                  drinkName: 'Coca Cola 1tlr',
                  drinkPrice: 'zmk 100',
                ),
              ),
            ],
          ),
          SizedBox(height: 4.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200.0,
                child: Drinks(
                  image: AssetImage('assets/images/cocacola.png'),
                  drinkName: 'Coca Cola 350ml',
                  drinkPrice: 'zmk 110',
                ),
              ),
              SizedBox(width: 4.0,),
              Container(
                height: 200.0,
                child: Drinks(
                  image: AssetImage('assets/images/bigcoke.png'),
                  drinkName: 'Mazoe 2.5ltr',
                  drinkPrice: 'zmk 130',
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 150.0,
            child: Image(
              image: AssetImage('assets/images/spritelogo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      )
    );
  }
}
