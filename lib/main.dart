import 'package:flutter/material.dart';
import 'ReviewTripPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WanderJaunt Demo',
      theme: ThemeData(
        fontFamily: 'Europa',
        brightness: Brightness.light,
        primaryColor: Color(0xFFff9d5c),
      ),
      home: ReviewTripPage(
        title: 'WanderJaunt'
      ),
    );
  }
}
