import 'package:flight_ticketing_app/base/bottom_nav_bar.dart';
import 'package:flight_ticketing_app/screens/home/all_hotels.dart';
import 'package:flight_ticketing_app/screens/home/all_tickets.dart';
import 'package:flight_ticketing_app/screens/profile/profile.dart';
import 'package:flight_ticketing_app/screens/ticket/hotel_detail.dart';
import 'package:flight_ticketing_app/screens/ticket/ticket_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static const String home = '/';
  static const String allTickets = '/all_tickets';
  static const String ticketScreen = '/ticket_screen';
  static const String allHotels = '/all_hotels';
  static const String hotelDetail = '/hotel_detail';
  static const String profile = '/profile';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const BottomNavBar(),
    allTickets: (context) => const AllTickets(),
    ticketScreen: (context) => const TicketScreen(),
    allHotels: (context) => const AllHotels(),
    hotelDetail: (context) => const HotelDetail(),
    profile: (context) => const ProfileScreen(),
  };
}
