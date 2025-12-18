import 'package:flight_ticketing_app/base/res/styles/app_styles.dart';
import 'package:flight_ticketing_app/base/utils/app_json.dart';
import 'package:flutter/material.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  @override
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args["index"]);
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[index]['name']),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      hotelList[index]['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      color: Colors.black.withAlpha(128),
                      child: Text(
                        hotelList[index]['name'],
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(-2.0, 2.0),
                              // blurRadius: 10.0,
                              // // color: AppStyles.primaryColor,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ExpandedTextWidget(text: hotelList[index]['details']),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More details...",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(16.0),
                      color: Colors.red,
                      child: Image.network("https://dummyimage.com/200x200"),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
    print("the value of isExpanded: $isExpanded");
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 6,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            _toggleExpansion();
          },
          child: Text(
            isExpanded ? "Show Less" : "Read More",
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
