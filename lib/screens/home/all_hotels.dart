import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flight_ticketing_app/base/utils/app_json.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.85,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            var singleHotel = hotelList[index];
            return HotelGridView(hotel: singleHotel);
          },
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelGridView({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      // width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: Container(
              // height: 180,
              decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(hotel['image']),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              hotel['name'],
              style: AppStyles.cardTitle.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  hotel['location'],
                  style: AppStyles.cardSubtitle.copyWith(
                    color: AppStyles.bgColor,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "${hotel['price_per_night']}€/night",
                  style: AppStyles.cardPrice.copyWith(
                    color: AppStyles.kakiColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
