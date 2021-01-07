import 'package:ccbz/models/drinks.dart';
import 'package:ccbz/screens/Beverages.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ccbz/models/carousel_container.dart';
import 'package:ccbz/models/most_popular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          child: Text(
            'SPECIAL OFFERS',
            style: TextStyle(
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  initialPage: _currentIndex,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  // onPageChanged: (index){
                  //   setState(() {
                  //     _currentIndex = index;
                  //   });
                  // },
                ),
                items: <Widget>[
                  CarouselContainer(
                    image: AssetImage('assets/images/cansprite.jpg'),
                  ),
                  CarouselContainer(
                    image: AssetImage('assets/images/sprite.png'),
                  ),
                  CarouselContainer(
                    image: AssetImage('assets/images/bigcoke.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                child: Text(
                  'MOST POPULAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    MostPopular(
                      image: AssetImage('assets/images/bigcoke.png'),
                      drinkName: 'Coca Cola 1ltr',
                      drinkPrice: 'zmk 95',
                    ),
                    MostPopular(
                      image: AssetImage('assets/images/fanta.jpg'),
                      drinkName: 'Fanta 700ml',
                      drinkPrice: 'zmk 110',
                    ),
                    MostPopular(
                      image: AssetImage('assets/images/sprite.png'),
                      drinkName: 'Sprite 1ltr',
                      drinkPrice: 'zmk 150',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                child: Text(
                  'PRODUCTS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 1.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    child: Drinks(
                      image: AssetImage('assets/images/fanta.jpg'),
                      drinkName: 'Fanta 350ml',
                      drinkPrice: 'zmk 100',
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
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
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200.0,
                    child: Drinks(
                      image: AssetImage('assets/images/sprite.png'),
                      drinkName: 'Sprite 350ml',
                      drinkPrice: 'zmk 110',
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Container(
                    height: 200.0,
                    child: Drinks(
                      image: AssetImage('assets/images/coke.png'),
                      drinkName: 'Coca Cola 250ml',
                      drinkPrice: 'zmk 130',
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: RaisedButton(
                    color: Colors.white60,
                    elevation: 0,
                    onPressed: () {
                      //Take user to the products page
                    },
                    child: Text(
                      'Swipe Left For More',
                      style: TextStyle(
                          fontSize: 14.0,
                          letterSpacing: 1.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(),
        ),
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Center(
            child: Text('Coca Cola Beverages Zambia 2020'),
          ),
        )
      ],
    ));
  }
}
