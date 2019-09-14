import 'package:flutter/material.dart';

class BeHost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          "Hosting",
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
                  "Leasing to WanderJaunt",
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
