import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('All Hotels'),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Center(child: Text('List of all hotels will be displayed here.')),
    );
  }
}
