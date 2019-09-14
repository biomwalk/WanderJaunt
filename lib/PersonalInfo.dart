import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          "Edit Personal Info",
        ), //title
      ), //appBar
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox (height: 20),
              ListTile(
                title: Text(
                  "First Name",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "Stacey",
                ), //subtitle
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                    color: Color(0xFF00cccc),
                  ), //style
                ), //trailing
              ), //ListTile

              ListTile(
                title: Text(
                  "Last Name",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "Adams",
                ), //subtitle
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                    color: Color(0xFF00cccc),
                  ), //style
                ), //trailing
              ), //ListTile

              ListTile(
                title: Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "Female",
                ), //subtitle
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                    color: Color(0xFF00cccc),
                  ), //style
                ), //trailing
              ), //ListTile

              ListTile(
                title: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "StaceyAdams@email.com",
                ), //subtitle
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                    color: Color(0xFF00cccc),
                  ), //style
                ), //trailing
              ), //ListTile

              ListTile(
                title: Text(
                  "Phone",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "012-345-6789",
                ), //subtitle
                trailing: Text(
                  "Edit",
                  style: TextStyle(
                    color: Color(0xFF00cccc),
                  ), //style
                ), //trailing
              ), //ListTile
            ], //children
          ), //Column
        ), //child:
      ), //Container
    ); //Scaffold
  } //BuildWidget
} //PersonalInfo
