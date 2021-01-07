import 'package:ccbz/screens/Beverages.dart';
import 'package:ccbz/screens/cart.dart';
import 'package:ccbz/screens/events.dart';
import 'package:ccbz/screens/home_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

TabController _tabController;

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.red[900],
          ),
        ),
        title: Text(
          'Coca-Cola Beverages ZM',
          style: TextStyle(
              color: Colors.red[900],
              fontSize: 14.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartScreen.id);
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.red[900],
            ),
          ),
        ],
        bottom: TabBar(
          labelPadding: EdgeInsets.all(8.0),
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.red[900],
          unselectedLabelColor: Colors.black54,
          labelColor: Colors.red[900],
          tabs: <Widget>[
            Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Products', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Events', style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
      ),
      body: Container(
        child: TabBarView(
          children: <Widget>[HomePage(), Beverages(), Events()],
          controller: _tabController,
        ),
      ),
    );
  }
}
