import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static final String id = '/notification';

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Notification Screen'
        ),
      ),
    );
  }
}
