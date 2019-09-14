import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {

  bool _isChecked1 =  true;
  bool _isChecked2 =  false;
  bool _isChecked3 =  false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          "Promotions",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), //style
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
                  "20% off",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "Expires October 20, 2019"
                ),
                trailing: Checkbox(
                  activeColor: Color(0xFF005dba),
                  value: _isChecked1,
                  onChanged: (value) {
                    setState(() {
                      _isChecked1 = value;
                      _isChecked2 = false;
                      _isChecked3 = false;
                    }); //setState
                  }, //onChanged
                ), //trailing
              ), //ListTile

              ListTile(
                title: Text(
                  "\$50 off",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "Expires October 1, 2019"
                ),

                trailing: Checkbox(
                  activeColor: Color(0xFF005dba),
                  value: _isChecked2,
                  onChanged: (value) {
                    setState(() {
                      _isChecked2 = value;
                      _isChecked1 = false;
                      _isChecked3 = false;
                    }); //setState
                  }, //onChanged
                ), //trailing
              ), //ListTile

              ListTile(
                title: Text(
                  "\$30 off",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                subtitle: Text(
                  "Expires Nov 1, 2019"
                ),
                trailing: Checkbox(
                  activeColor: Color(0xFF005dba),
                  value: _isChecked3,
                  onChanged: (value) {
                    setState(() {
                      _isChecked3 = value;
                      _isChecked1 = false;
                      _isChecked2 = false;
                    }); //SetState
                  },  //OnChanged
                ), //trailing
              ), //ListTile

              ExpansionTile(
                leading: Icon(
                  Icons.add,
                  color: Color(0xFF5cdede)
                ),
                title: Text(
                  "Add Promo Code",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //title
                children: <Widget> [
                  ListTile(
                    title: Text('Enter Code Here'),
                  ), //ListTile
                ], //Children
              ), //ListTile
            ], //children
          ), //Column
        ), //child:
      ), //Container
    ); //Scaffold
  } //BuildWidget
} //PersonalInfo
