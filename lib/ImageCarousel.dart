import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Container (
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.0),
      ), //BoxDecoration
      child: Carousel (
        images: [
          AssetImage("images/Lance.jpg"),
          AssetImage("images/Lance2.jpg"),
          AssetImage("images/Lance3.jpg"),
          AssetImage("images/Lance4.jpg"),
          AssetImage("images/Lance5.jpg"),
          AssetImage("images/Lance6.jpg"),
          AssetImage("images/Lance7.jpg"),
          AssetImage("images/Lance8.jpg"),
          AssetImage("images/Lance9.jpg"),
          AssetImage("images/Lance10.jpg"),
        ], //Images
        //animationCurve: Curves.linear,
        autoplay: false,
        //animationDuration: Duration (seconds: 7),
      ), //Carousel
    ); //Container
  } //BuildContext
} //ImageCarousel
