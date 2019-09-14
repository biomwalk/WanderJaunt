import 'package:flutter/material.dart';

class UserDashBoard extends StatelessWidget {
  final String title;
  List<IconData> icons = [Icons.person, Icons.credit_card, Icons.notifications, Icons.work];
  List<String> headers = ["Personal Info", "Payment Methods", "Notifications", "Business Travel"];

  UserDashBoard(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text (
          title,
        ), //title
      ), //appBar
      body: _buildStack(),
    ); //Scaffold
  } //BuidWidget

  Widget _buildStack() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: icons.length,
      itemBuilder: (context, i) {
        //if (i.isOdd) return Divider();
        return (_buildRow(i));
      } //itemBuilder
    );
  }

  Widget _buildRow(int i) {
    return ListTile(
      title: Text(
        headers[i],
      ),
      trailing: Icon(
        icons[i],
        color: Colors.orange,
      ),
      onTap: () {},
    );
  }
} //UserDashBoard
