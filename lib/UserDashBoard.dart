import 'package:flutter/material.dart';
import 'PaymentMethods.dart';
import 'Promotions.dart';
import 'BeHost.dart';
import 'Notifications.dart';
import 'BizTravel.dart';
import 'InvFriends.dart';
import 'PersonalInfo.dart';

class UserDashBoard extends StatefulWidget {
  UserDashBoard(this.title);
  final String title;

  @override
  _UserDashBoardState createState() => _UserDashBoardState(title);
}

class _UserDashBoardState extends State<UserDashBoard> {
  String title;
  _UserDashBoardState(this.title);


  bool promoCode = false;
  List<IconData> _accountIcons = [Icons.people, Icons.local_offer, Icons.home, Icons.person, Icons.credit_card, Icons.notifications, Icons.work];
  List<String> _accountHeaders = ["Invite Friends", "Promotions", "Become a Host", "Account", "Payment Methods", "Notifications", "Business Travel"];
  List<String> _subHeaders = ["Earn up to \$30 for each person you refer", "Enter Discount Code", "Hosting", "Edit Your Personal Info", "Update Payment Info", "Change Notification Preferences", "Setup Business Account"];
  List<Widget> _pages = [InvFriends(), Promotions(), BeHost(), PersonalInfo(), PaymentMethods(), Notifications(), BizTravel()];



  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ), //style
        ), //title
        actions: <Widget>[
          Container(
            child: Image.asset('images/WanderJauntIcon.png', fit: BoxFit.cover),
          ), //Container
        ], //actions
      ), //appBar
      body: Container(
        child: SingleChildScrollView (
          child:Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              SizedBox(height:30),
              _buildStack(),
            ], //Children
          ), //Column
        ), //SingleChildScrollView
      ), //Container
    ); //Scaffold
  } //BuidWidget

  Widget _buildStack() {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(16.0),
      itemCount: _accountHeaders.length,
      itemBuilder: (context, i) {
        //if (i.isOdd) return Divider();
        return (_buildAccountRow(i));
      } //itemBuilder
    ); //ListView builder
  } //buildStack

  Widget _buildAccountRow(int i) {
    return ListTile(
      subtitle: Text(
        _subHeaders[i],
      ),
      title: Text(
        _accountHeaders[i],
      ), //Text
      trailing: Icon(
        _accountIcons[i],
        color: Color(0xFF5c9dde),
      ), //Icon
      onTap: () {
        _viewPage(_pages[i]);
      },
    ); //ListTile
  } //buildAccountRow

  void _viewPage(Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return page;
        }
      )
    );
  }

} //UserDashBoard
