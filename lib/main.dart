import 'package:flight_ticketing_app/base/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  var myList = ["Flutter", "Laravel", "PHP"];
  print("${myList[0]}");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: BottomNavBar(),
    );
  }
}
