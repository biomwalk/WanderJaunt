import 'package:flutter/material.dart';
import 'ImageCarousel.dart';

class ReviewTripPage extends StatefulWidget {
  ReviewTripPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ReviewTripPageState createState() => _ReviewTripPageState();
} //ReviewTripPage

class _ReviewTripPageState extends State<ReviewTripPage> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    bool isSwitched2 = false;
    String name = "Lance";
    double nightlyCost = 114.69;
    double fees = 104;
    double discount = .2;
    int numNights = 7;
    double discountCost = (nightlyCost * numNights) * discount;
    double total = nightlyCost * numNights - discountCost + fees;
    double stars = 4.5;
    int numStays = 12;
    String checkIn = "Sept 15";
    String checkOut = "Sept 20";
    int numGuests = 1;
    String guestState = (numGuests == 1) ? "Guest" : "Guests";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              child: Image.asset('images/WanderJauntIcon.png', fit: BoxFit.cover),
            ), //Container
            Container(
              child: InkWell (
                child: Text (
                  "WanderJaunt",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ), //style
                ), //Text
                onTap:(){},
              ), //Inkwell
            ), //Container
          ], //children Widget
        ), //Row
        // title: InkWell (
        //   child: Text(
        //     widget.title,
        //     style: TextStyle(
        //       color: Colors.white
        //     ) //style
        //   ), //Child
        //   onTap: () {},
        // ), //Inkwell
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ), //Icon
            onPressed: () {}
          ), //IconButton
        ], //actions
      ), //appbar
      drawer: Drawer(
        child: Container(
          color: Color(0xFFff9d5c),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Brandon Walker'),
                accountEmail: Text('biomwalk@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: (){},
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white,),
                  ), //CircleAvatar
                ), //currentAccountPicture
                decoration: BoxDecoration(
                  color: Color(0xFFff9d5c)
                ), //decoration
              ), //UserAccountsDrawerHeader

              InkWell(
                onTap: (){},
                child: ExpansionTile(
                  title: Text('Company'),
                  leading: Icon(Icons.home),
                  children: <Widget> [
                    ListTile(
                      title: Text('Careers'),
                    ), //ListTile
                    ListTile(
                      title: Text('Blog'),
                    ), //ListTile
                  ], //Children
                ), //child: Listtitle
                splashColor: Color(0xFFff9d5c)
              ), //Inkwell

              InkWell(
                onTap: (){},
                child: ExpansionTile(
                  title: Text('Partners'),
                  leading: Icon(Icons.person),
                  children: <Widget> [
                    ListTile(
                      title: Text('Lease to WanderJaunt'),
                    ), //ListTile
                    ListTile(
                      title: Text('Home Owners'),
                    ), //ListTile
                  ], //Children
                ), //ListTitle
              ), //Inkwell

              InkWell(
                onTap: (){},
                child: ExpansionTile(
                  title: Text('Legal'),
                  leading: Icon(Icons.business_center),
                  children: <Widget> [
                    ListTile(
                      title: Text('Privacy Policy'),
                    ), //ListTile
                    ListTile(
                      title: Text('Terms of Service'),
                    ), //ListTile
                  ], //Children
                ), //ListTitle
              ), //Inkwell

              InkWell(
                onTap: (){},
                child: ExpansionTile(
                  title: Text('Support'),
                  leading: Icon(Icons.call),
                  children: <Widget> [
                    ListTile(
                      title: Text('HouseRules'),
                    ), //ListTile
                    ListTile(
                      title: Text('Contact Us'),
                    ), //ListTile
                  ], //Children
                ), //ListTitle
              ), //Inkwell

              Divider(),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.blue,),
                ), //ListTitle
              ), //Inkwell

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.green),
                ), //ListTitle
              ), //Inkwell

              Divider(),

              InkWell(
                child: ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.power_settings_new, color: Colors.red),
                  //onTap: () async {

                    //Navigator.pushReplacementNamed(context, "/");
                  //} //onTap async
                ), //ListTitle
              ), //Inkwell
            ], //Children Widget
          ), //ListView
        ),
      ), //drawer
      backgroundColor: Color(0xFF5c9dde),
      body: Container (
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox (height: 40),
              ImageCarousel(),
              // Container(
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //     borderRadius: new BorderRadius.circular(9.0),
              //     image: DecorationImage(
              //       image: AssetImage("images/Lance.jpg"),
              //       fit: BoxFit.fill,
              //     ) //DecorationImage
              //   ) //BoxDecoration
              // ), //Container
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text (
                    name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                    ), //style
                  ), //Text
                ), //Container
              ), //SizedBox (Name of Property)
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text (
                    "\$" + nightlyCost.toString() + " per night",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ), //style
                  ), //Text
                ), //Container
              ), //SizedBox Cost Per Night
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text (
                    "\u2b51 " + stars.toString() + " (" + numStays.toString() + " stays)",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white
                    ), //style
                  ), //Text
                ), //Container
              ), //SizedBox Star Rating
              Divider(),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  GestureDetector(
                    onTap:() {},
                    child: Container (
                      decoration: BoxDecoration (
                        borderRadius: new BorderRadius.circular(9.0),
                      ), //decoration
                      child: Column (
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget> [
                          Text (
                            "Check-in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                            ), //Style
                          ), //Text
                          Text (
                            checkIn.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ), //style
                          ), //Text
                        ],
                      ), //Column
                    ), //child Container
                  ), //GestureDetector
                  GestureDetector(
                    onTap:() {},
                    child: Container (
                      decoration: BoxDecoration (
                        borderRadius: new BorderRadius.circular(9.0),
                      ),
                      child: Column (
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget> [
                          Text (
                            "Check-out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                            ), //style
                          ), //Text
                          Text (
                            checkOut.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ), //style
                          ), //Text
                        ],
                      ), //Column
                    ), //child Container
                  ), //GestureDetector
                  GestureDetector(
                    onTap:() {},
                    child: Container (
                      decoration: BoxDecoration (
                        borderRadius: new BorderRadius.circular(9.0),
                      ),
                      child: Column (
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget> [
                          Text (
                            "Guests",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                            ) //style
                          ), //Text
                          Text (
                            numGuests.toString() + " " + guestState,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ), //style
                          ), //Text
                        ],
                      ), //Column
                    ), //child Container
                  ), //GestureDetector
                ], //children Widget
              ), //Row
              SizedBox(height: 10.0),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text (
                          "Apply Promo Code?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ), //Container
                    ), //Align
                  ), //Expanded
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Switch (
                        value: isSwitched,
                        onChanged: (value) {
                          setState(()  {
                            isSwitched = value;
                          }); //setState
                        }, //onChanged
                        activeTrackColor: Color(0xFFb9f1f1),
                        activeColor: Color(0xFF00baba),
                      ), //Switch
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //row
              SizedBox(height: 5.0),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text (
                          "Is this a business trip?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ), //Container
                    ), //Align
                  ), //Expanded
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Switch (
                        value: isSwitched2,
                        onChanged: (value) {
                          setState(()  {
                            isSwitched = value;
                          }); //setState
                        }, //onChanged
                        activeTrackColor: Color(0xFFb9f1f1),
                        activeColor: Color(0xFF00baba),
                      ), //Switch
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //row
              Divider(),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: GestureDetector(
                          onTap: (){},
                        child: Text (
                          "Taxes and Fees \u24D8",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ),
                      ), //Container
                    ), //Align
                  ), //Expanded
                ], //children Widget
              ), //row
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text (
                          "\$" + nightlyCost.toString() + " x " + numNights.toString() + " nights",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ), //Container
                    ), //Align
                  ), //Expanded
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Text (
                        "\$" + (nightlyCost*numNights).toStringAsFixed(0),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ), //style
                      ), //Text
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //Costrow
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text (
                          "Discount",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ), //Container
                    ), //Align
                  ), //Expanded
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Text (
                        "-\$" + discountCost.toStringAsFixed(0),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ), //style
                      ), //Text
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //DiscountRow
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text (
                          "Taxes and Fees",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ), //Container
                    ), //Align
                  ), //Expanded
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Text (
                        "\$" + fees.toStringAsFixed(0),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ), //style
                      ), //Text
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //FeesRow
              SizedBox (height: 5),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget> [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text (
                          "Total",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ), //style
                        ), //Text
                      ), //Container
                    ), //Align
                  ), //Expanded
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: Text (
                        "\$" + total.toStringAsFixed(0),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white
                        ), //style
                      ), //Text
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //Totalrow
              FlatButton(
                onPressed: (){},
                color: Color(0xFF00cccc),
                child: Text(
                  "Reserve!",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ), //style
                )
              ) //Flatbuttton
            ], //children
          ), //Column
        ), //SingleChildScrollView
      ), //Child Container
    ); //Scaffold
  } //Widget BuildContext
} //_ReviewTripPageState
