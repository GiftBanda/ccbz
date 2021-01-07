import 'package:flutter/material.dart';
import 'package:ccbz/models/carousel_container.dart';
import 'package:ccbz/models/events_row.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

int _currentIndex = 0;

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          child: Text(
            'HIGHLIGHTS',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                fontSize: 18.0),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  initialPage: _currentIndex,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  // onPageChanged: (index) {
                  //   setState(() {
                  //     _currentIndex = index;
                  //   });
                  // },
                ),
                items: <Widget>[
                  CarouselContainer(
                    image: AssetImage('assets/images/friends.jpg'),
                  ),
                  CarouselContainer(
                    image: AssetImage('assets/images/fanta.jpg'),
                  ),
                  CarouselContainer(
                    image: AssetImage('assets/images/coke.png'),
                  ),
                  CarouselContainer(
                    image: AssetImage('assets/images/spritelogo.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          child: Text(
            'UPCOMING',
            style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 1.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        EventsRow(
          title: 'COLOUR FEST',
          image: AssetImage('assets/images/friends.jpg'),
          day: '19',
          month: 'JUN',
          startTime: '10:00 AM',
          venue: 'NASDAQ',
        ),
        EventsRow(
          title: 'MOSI THUNDER',
          image: AssetImage('assets/images/coke.png'),
          day: '15',
          month: 'AUG',
          startTime: '15:00 PM',
          venue: 'GOV COMPLEX',
        ),
        EventsRow(
          title: 'MOSI FEST',
          image: AssetImage('assets/images/friends.jpg'),
          day: '19',
          month: 'JUN',
          startTime: '10:00 AM',
          venue: 'NASDAQ',
        ),
        EventsRow(
          title: 'COCA COLA',
          image: AssetImage('assets/images/coke.png'),
          day: '15',
          month: 'AUG',
          startTime: '15:00 PM',
          venue: 'GOV COMPLEX',
        ),
      ],
    );
  }
}
