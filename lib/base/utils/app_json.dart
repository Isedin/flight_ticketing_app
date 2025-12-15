import 'package:flight_ticketing_app/base/res/media.dart';

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': 'NYC', 'name': 'New York'},
    'to': {'code': 'LDN', 'name': 'London'},
    'flying_time': '8H 30M',
    'date': '1 May',
    'departure_time': '08:00 AM',
    'number': 23,
  },
  {
    'from': {'code': 'DK', 'name': 'Dhaka'},
    'to': {'code': 'SH', 'name': 'Shanghai'},
    'flying_time': '5H 20M',
    'date': '12 Jun',
    'departure_time': '10:30 PM',
    'number': 45,
  },
  {
    'from': {'code': 'TKY', 'name': 'Tokyo'},
    'to': {'code': 'SYD', 'name': 'Sydney'},
    'flying_time': '9H 15M',
    'date': '23 Jul',
    'departure_time': '06:45 AM',
    'number': 67,
  },
  {
    'from': {'code': 'DK', 'name': 'Dhaka'},
    'to': {'code': 'RH', 'name': 'Riyadh'},
    'flying_time': '5H 20M',
    'date': '12 Jun',
    'departure_time': '10:30 PM',
    'number': 45,
  },
  {
    'from': {'code': 'PAR', 'name': 'Paris'},
    'to': {'code': 'BER', 'name': 'Berlin'},
    'flying_time': '1H 45M',
    'date': '15 Aug',
    'departure_time': '02:15 PM',
    'number': 89,
  },
  {
    'from': {'code': 'ROM', 'name': 'Rome'},
    'to': {'code': 'MAD', 'name': 'Madrid'},
    'flying_time': '2H 10M',
    'date': '30 Sep',
    'departure_time': '11:00 AM',
    'number': 34,
  },
];

List<Map<String, dynamic>> hotelList = [
  {
    'name': 'Grand Hotel',
    'location': 'Hamburg',
    'price_per_night': 150,
    'image': AppMedia.motel1,
  },
  {
    'name': 'Four Seasons',
    'location': 'Berlin',
    'price_per_night': 200,
    'image': AppMedia.hotel2,
  },
  {
    'name': 'Mountain Inn',
    'location': 'Munich',
    'price_per_night': 120,
    'image': AppMedia.hotel3,
  },
  {
    'name': 'City Lodge',
    'location': 'Frankfurt',
    'price_per_night': 180,
    'image': AppMedia.motel2,
  },
  // {
  //   'name': 'Beach Resort',
  //   'location': 'Nice',
  //   'price_per_night': 220,
  //   'image': AppMedia.hotel1,
  // },
];
