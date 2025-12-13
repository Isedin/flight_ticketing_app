import 'package:flight_ticketing_app/base/res/media.dart';
import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          width: size.width * 0.42,
          height: 410,
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
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  width: size.width * 0.44,
                  height: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xFF3AB8B8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headlineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Take the survey about our services and get discount",
                        style: AppStyles.headlineStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppStyles.circleColor,
                        width: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              width: size.width * 0.44,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFFEC6545),
              ),
              child: Column(
                children: [
                  Text(
                    "Take love",
                    style: AppStyles.headlineStyle2.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "😍", style: TextStyle(fontSize: 38)),
                        TextSpan(text: "🥰", style: TextStyle(fontSize: 50)),
                        TextSpan(text: "😘", style: TextStyle(fontSize: 38)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
