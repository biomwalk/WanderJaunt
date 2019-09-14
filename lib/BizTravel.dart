import 'package:flutter/material.dart';

class BizTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          "Business Travel",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), //style
        ), //title
      ), //appBar
      body: Container(
        child:  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox(height: 30),
              FlatButton (
                shape: StadiumBorder(),
                onPressed: (){},
                color: Color(0xFF00cccc),
                child: Text(
                  "Enter Business Email",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ), //style
                ), //Text
              ), //Flatbuttton
            ], //children
          ), //Column
        ), //Center
      ), //Container
    ); //Scaffold
  } //BuidWidget
} //BeHost
