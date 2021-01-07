import 'package:ccbz/screens/home.dart';
import 'package:ccbz/screens/notification_screen.dart';
import 'package:ccbz/screens/wishlist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String id = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int _currentIndex = 0;
List<Widget> screens = [
  Home(),
  Wishlist(),
  NotificationScreen(),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[900],
        unselectedItemColor: Colors.black54,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text(
              'Home',
            ),
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('About'),
            icon: Icon(Icons.help),
          ),
          BottomNavigationBarItem(
            title: Text('Contact'),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
