import 'package:flight_ticketing_app/base/bottom_nav_bar.dart';
import 'package:flight_ticketing_app/screens/home/all_tickets.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static const String home = '/';
  static const String allTickets = 'all_tickets';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const BottomNavBar(),
    allTickets: (context) => const AllTickets(),
  };
}
