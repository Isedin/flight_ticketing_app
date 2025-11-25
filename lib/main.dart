import 'package:flight_ticketing_app/base/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  var test = TestClass(x: 2, y: 3);
  print(test.x);
  var newTest = test.copyWith(x: 30);
  print(newTest.y);

  var newTest2 = newTest.copyWith(y: 100);
  print(newTest2.x);
}

class TestClass {
  int x;
  int y;

  TestClass({required this.x, required this.y});

  TestClass copyWith({int? x, int? y}) {
    return TestClass(x: x ?? this.x, y: y ?? this.y);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
