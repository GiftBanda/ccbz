import 'package:flutter/material.dart';

class Drinks extends StatelessWidget {
  Drinks({@required this.image, this.drinkPrice, this.drinkName});
  final ImageProvider image;
  final String drinkName;
  final String drinkPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 150.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(width: 0.8, color: Colors.black54)
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image(
                    image: image,
                    fit: BoxFit.fitWidth,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    drinkName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    '12 bottles per case',
                    style: TextStyle(
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 4.0,),
                  Text(
                    drinkPrice,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20.0,
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(
                          Icons.add_shopping_cart,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
