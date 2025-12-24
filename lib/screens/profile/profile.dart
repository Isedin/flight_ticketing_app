import 'package:flight_ticketing_app/base/res/media.dart';
import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flight_ticketing_app/base/widgets/app_column_text_layout.dart';
import 'package:flight_ticketing_app/base/widgets/heading_text.dart';
import 'package:flight_ticketing_app/base/widgets/text_style_third.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // shows the logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppMedia.logo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // shows the column text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(text: "Book Tickets", isColor: false),
                  const SizedBox(height: 2),
                  Text("New-York", style: AppStyles.headLineStyle4),
                  const SizedBox(height: 8),
                  // location container
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 3,
                    ),
                    // decoration
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppStyles.profileLocationColor,
                    ),
                    // child -> row -> icon + text
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Premium status",
                          style: TextStyle(
                            color: AppStyles.profileTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                  color: AppStyles.primaryColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(
                          text: "You've got a new award",
                          isColor: null,
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                            color: Colors.white.withAlpha(200),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text("Accumulated miles", style: AppStyles.headLineStyle2),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: AppStyles.bgColor,
              borderRadius: BorderRadius.circular(18),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.shade200,
              //     blurRadius: 1,
              //     spreadRadius: 1,
              //   ),
              // ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: AppStyles.textColor,
                  ),
                ),
                const SizedBox(height: 15),
                // row -> text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 May 2023",
                      style: AppStyles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),
                // row -> column
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "23 402",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    // column
                    AppColumnTextLayout(
                      topText: "Airline CO",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "2302",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    // column
                    AppColumnTextLayout(
                      topText: "German Airlines",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade300),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "5602",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    // column
                    AppColumnTextLayout(
                      topText: "Argent Airlines",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                // text
                const SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    print("How to get more miles");
                  },
                  child: Text(
                    "How to get more miles",
                    style: AppStyles.textStyle.copyWith(
                      color: AppStyles.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
