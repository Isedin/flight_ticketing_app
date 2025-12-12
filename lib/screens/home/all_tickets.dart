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
                    (singleTicket) => Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: TicketView(
                        ticket: singleTicket,
                        wholeScreen: true,
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
