import 'package:flight_ticketing_app/base/app_routes.dart';
import 'package:flight_ticketing_app/base/utils/app_json.dart';
import 'package:flight_ticketing_app/base/widgets/ticket_view.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Tickets')),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        print("i was tapped on ticket index: $index");
                        Navigator.pushNamed(
                          context,
                          AppRoutes.ticketScreen,
                          arguments: {'index': index},
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
