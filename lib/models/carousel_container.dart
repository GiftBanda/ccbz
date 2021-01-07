import 'package:flutter/material.dart';

class CarouselContainer extends StatelessWidget {
  CarouselContainer({this.image});
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
              image: image,
              fit: BoxFit.fill
          )
      ),
    );
  }
}
