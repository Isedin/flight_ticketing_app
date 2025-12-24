import 'package:flight_ticketing_app/base/res/media.dart';
import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flight_ticketing_app/base/widgets/heading_text.dart';
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
        ],
      ),
    );
  }
}
