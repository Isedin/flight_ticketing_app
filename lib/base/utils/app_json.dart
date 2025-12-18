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
    'details':
        'The Grand Hotel is a refined waterfront property located near Hamburg’s iconic harbor. Guests enjoy spacious, elegantly furnished rooms, complimentary high-speed Wi-Fi, and a full-service wellness spa featuring a sauna and massage treatments. The hotel also offers an on-site restaurant serving international cuisine, a stylish lounge bar, and convenient access to shopping areas, cultural attractions, and public transportation. The Grand Hotel is a refined waterfront property located near Hamburg’s iconic harbor. Guests enjoy spacious, elegantly furnished rooms, complimentary high-speed Wi-Fi, and a full-service wellness spa featuring a sauna and massage treatments. The hotel also offers an on-site restaurant serving international cuisine, a stylish lounge bar, and convenient access to shopping areas, cultural attractions, and public transportation.',
        'images': [
          
        ]
  },
  {
    'name': 'Four Seasons',
    'location': 'Berlin',
    'price_per_night': 200,
    'image': AppMedia.hotel2,
    'details':
        'Located in the heart of Berlin, the Four Seasons delivers a premium luxury experience designed for both leisure and business travelers. The hotel features beautifully designed rooms with panoramic city views, a rooftop swimming pool, a state-of-the-art fitness center, and fine dining options curated by top chefs. Guests benefit from personalized concierge services, spa facilities, and close proximity to major landmarks, museums, and nightlife.',
  },
  {
    'name': 'Mountain Inn',
    'location': 'Munich',
    'price_per_night': 120,
    'image': AppMedia.hotel3,
    'details':
        'Mountain Inn offers a warm and inviting atmosphere inspired by traditional alpine design. Perfect for relaxed stays, the hotel provides comfortable rooms, complimentary breakfast, and friendly staff focused on guest comfort. Its location allows easy access to Munich’s city center while offering a peaceful retreat after a busy day. Ideal for couples and solo travelers seeking comfort and value.',
  },
  {
    'name': 'City Lodge',
    'location': 'Frankfurt',
    'price_per_night': 180,
    'image': AppMedia.motel2,
    'details':
        'City Lodge is a modern, business-oriented hotel situated close to Frankfurt’s financial district. It offers well-equipped rooms with workspaces, fast and reliable internet, and soundproof interiors. Additional amenities include meeting rooms, a business lounge, an on-site café, and quick connections to airports and train stations. A great choice for professionals and short city stays.',
  },

  // {
  //   'name': 'Beach Resort',
  //   'location': 'Nice',
  //   'price_per_night': 220,
  //   'image': AppMedia.hotel1,
  // },
];
