import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Holet title"),
              background: Image.network("https://dummyimage.com/600x400"),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "In this article, we explore the details of the hotel including amenities, location, reviews, and more. The hotel offers a variety of services to ensure a comfortable stay for all guests. Enjoy your visit!",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("More details..."),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
