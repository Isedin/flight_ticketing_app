import 'package:flight_ticketing_app/base/app_routes.dart';
import 'package:flight_ticketing_app/base/res/media.dart';
import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flight_ticketing_app/base/widgets/app_double_text.dart';
import 'package:flight_ticketing_app/screens/search/widgets/app_text_icon.dart';
import 'package:flight_ticketing_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:flight_ticketing_app/screens/search/widgets/find_tickets.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(title: const Text("Search")),
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(height: 20),
          const AppTicketTabs(),
          SizedBox(height: 25),
          const AppTextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 25),
          const FindTickets(),
          SizedBox(height: 40),
          AppDoubleText(
            bigText: "Upcoming flights",
            smallText: "View all",
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                width: size.width * 0.44,
                height: 405,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSit),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: AppStyles.headlineStyle2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
