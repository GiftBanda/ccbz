import 'package:flutter/material.dart';

class EventsRow extends StatelessWidget {
  EventsRow({this.image, this.title, this.startTime, this.venue, this.day, this.month});
  final ImageProvider image;
  final String title;
  final String startTime;
  final String day;
  final String month;
  final String venue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 200.0,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(day,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),),
                  Text(month,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.access_time,
                    ),
                  ),
                  Text(startTime),
                  Text(venue),
                  FlatButton(
                    color: Colors.black12,
                    onPressed: (){},
                    child: Text(
                      'info',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          SizedBox(width: 5.0,),
          Expanded(
            flex: 2,
            child: Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: image,
                      fit: BoxFit.fill
                  ),
                  color: Colors.lime[800],
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),),
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
