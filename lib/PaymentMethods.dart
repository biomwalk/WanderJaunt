import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          "Payment",
        ), //title
      ), //appBar
      body: Container(
        child: SingleChildScrollView (
          child:Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox(height:30),
              ExpansionTile (
                title: Text("Visa"),
                leading: Icon(
                  Icons.payment,
                  color: Color(0xFF5c9dde),
                ), //Icon
                //onTap: () {},
                children: <Widget> [
                  ListTile(
                    title: Text('Card number'),
                    trailing: Text("**********1234"),
                  ), //ListTile
                  ListTile(
                    title: Text('Expiration'),
                    trailing: Text("08/2018")
                  ), //ListTile
                ], //Children
              ), //ExpansionTile

              ExpansionTile (
                title: Text("MasterCard"),
                leading: Icon(
                  Icons.payment,
                  color: Color(0xFF5c9dde),
                ), //Icon
                //onTap: () {},
                children: <Widget> [
                  ListTile(
                    title: Text('Card number'),
                    trailing: Text("**********1234"),
                  ), //ListTile
                  ListTile(
                    title: Text('Expiration'),
                    trailing: Text("12/2020")
                  ), //ListTile
                ], //Children
              ), //ExpansionTile

              ExpansionTile (
                title: Text("Paypal"),
                leading: Icon(
                  Icons.payment,
                  color: Color(0xFF5c9dde),
                ), //Icon
                //onTap: () {},
                children: <Widget> [
                  ListTile(
                    title: Text('Email'),
                    trailing: Text("staceyadams@email.com"),
                  ), //ListTile
                ], //Children
              ), //ExpansionTile

              ExpansionTile (
                title: Text("Venmo"),
                leading: Icon(
                  Icons.payment,
                  color: Color(0xFF5c9dde),
                ), //Icon
                //onTap: () {},
                children: <Widget> [
                  ListTile(
                    title: Text('Email'),
                    trailing: Text("staceyadams@email.com"),
                  ), //ListTile
                ], //Children
              ), //ExpansionTile

              ExpansionTile (
                title: Text("Apple Pay"),
                leading: Icon(
                  Icons.payment,
                  color: Color(0xFF5c9dde),
                ), //Icon
                //onTap: () {},
                children: <Widget> [
                  ListTile(
                    title: Text('Email'),
                    trailing: Text("staceyadams@email.com"),
                  ), //ListTile
                ], //Children
              ), //ExpansionTile

              ExpansionTile (
                title: Text("Add Payment Method"),
                leading: Icon(
                  Icons.add,
                  color: Color(0xFF5c9dde),
                ), //Icon
                //onTap: () {},
                children: <Widget> [
                  ListTile(
                    title: Text('Enter New Payment Method Here'),
                  ), //ListTile
                ], //Children
              ), //ExpansionTile
            ], //Children
          ), //Column
        ), //SingleChildScrollView
      ), //Container
    ); //Scaffold
  } //BuidWidget
} //UserDashBoard
