import 'package:flutter/material.dart';
import 'ImageCarousel.dart';
import 'UserDashBoard.dart';
import 'SiteExplorer.dart';

class ReviewTripPage extends StatefulWidget {
  ReviewTripPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ReviewTripPageState createState() => _ReviewTripPageState();
} //ReviewTripPage

class _ReviewTripPageState extends State<ReviewTripPage> {

  String userName = "Stacey Warren";
  bool isSwitched = false;
  bool isSwitched2 = false;
  String propertyName = "Lance";
  double stars = 4.5;
  int numStays = 12;
  String checkIn = "Sept 15";
  String checkOut = "Sept 20";
  int numGuests = 1;

  @override
  Widget build(BuildContext context) {

    double nightlyCost = 114.69;
    double fees = 104;
    double discount = (isSwitched == true) ? .2  : 0;
    int numNights = 7;
    double discountCost = (nightlyCost * numNights) * discount;
    double total = nightlyCost * numNights - discountCost + fees;
    String guestState = (numGuests == 1) ? "Guest" : "Guests";

    return Scaffold(
      backgroundColor: Color(0xFF5c9dde),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), //style
                ), //Text
                onTap:(){},
              ), //Inkwell
            ), //Container
          ], //children Widget
        ), //Row
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
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
                accountName: Text(userName),
                accountEmail: Text('StaceyWarren@email.com'),
                currentAccountPicture: GestureDetector(
                  onTap: (){
                    _viewProfile();
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage ("images/StaceyWarren.jpg"),
                    //backgroundColor: Colors.black,
                    //child: Icon(Icons.person, color: Colors.white,),
                  ), //CircleAvatar
                ), //currentAccountPicture
                decoration: BoxDecoration(
                  //color: Color(0xFFffffff)
                ), //decoration
              ), //UserAccountsDrawerHeader
              InkWell(
                onTap: (){
                  _viewLink("https://boards.greenhouse.io/wanderjaunt");
                },
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
                ), //Expansiontile
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
                ), //ExpansionTitle
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
                ), //ExpansionTitle
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
                ), //ExpansionTtile
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
                  onTap: (){} //onTap
                ), //ListTitle
              ), //Inkwell
            ], //Children Widget
          ), //ListView
        ),
      ), //drawer
      body: Container (
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox (height: 40),
              ImageCarousel(),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Text (
                    propertyName,
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

              // ExpansionTile(
              //   title: Text(
              //     'Change Payment Method',
              //     textAlign: TextAlign.left,
              //     style: TextStyle(
              //       fontSize: 15.0,
              //       color: Colors.white
              //     ) //style
              //   ), //Text
              //   children: <Widget> [
              //     ListTile(
              //       title: Text(
              //         'ApplePay',
              //         style: TextStyle(
              //           fontSize: 15.0,
              //           color: Colors.white
              //         ) //style
              //       ),
              //     ), //ListTile
              //     ListTile(
              //       title: Text(
              //         'Venmo',
              //         style: TextStyle(
              //           fontSize: 15.0,
              //           color: Colors.white
              //         ) //style
              //       ),
              //     ), //ListTile
              //     ListTile(
              //         title: Text(
              //           'Card #1',
              //           style: TextStyle(
              //             fontSize: 15.0,
              //             color: Colors.white
              //           ) //style
              //       ), //Text
              //     ), //ListTile
              //     ListTile(
              //       title: Text(
              //         'Card #2',
              //         style: TextStyle(
              //           fontSize: 15.0,
              //           color: Colors.white
              //         ), //style
              //       ),
              //     ), //ListTile
              //   ], //Children
              // ), //ExpansionTile

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
              ), //PromoCodeRow
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
                            isSwitched2 = value;
                          }); //setState
                        }, //onChanged
                        activeTrackColor: Color(0xFFb9f1f1),
                        activeColor: Color(0xFF00baba),
                      ), //Switch
                    ), //Container
                  ), //Align
                ], //children Widget
              ), //BusinessTriprow
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
                      ), //GestureDetector
                      ), //Container
                    ), //Align
                  ), //Expanded
                ], //children Widget
              ), //TaxesandFees info row
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
              SizedBox (height: 10),
              Divider(),
              SizedBox (height: 10),
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
              SizedBox (height: 20),
            ], //children
          ), //Column
        ), //SingleChildScrollView
      ), //Child Container
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(40, 20, 40, 30),
        child: FlatButton (
          shape: StadiumBorder(),
          onPressed: (){},
          color: Color(0xFF00cccc),
          child: Text(
            "Book!",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white
            ), //style
          ), //Text
        ), //Flatbuttton
      ), //Padding
    ); //Scaffold
  } //Widget BuildContext

  void _viewProfile() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return UserDashBoard(userName);
        }
      )
    );
  } //viewProfile

  void _viewLink(url) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return SiteExplorer(url);
        }
      )
    );
  }
} //_ReviewTripPageState
