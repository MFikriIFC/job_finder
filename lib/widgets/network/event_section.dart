import 'package:flutter/material.dart';
import 'package:job_finder/widgets/network/molecules/event_card.dart';

class EventSection extends StatelessWidget {
  EventSection({super.key});

  final List<Map<String, dynamic>> events = [
    {
      'header': 'assets/images/event1.webp',
      'title':
          'Money in Metaverse: The Role of Blockchain, Web3, Crypto and NFT',
      'date': 'Wed, Jul 3, 7:30 PM',
      'attendees': '16,612',
    },
    {
      'header': 'assets/images/event2.png',
      'title': 'Branding, Marketing, Selling and Metaverse',
      'date': 'Wed, Jul 3, 8:30 PM',
      'attendees': '27,846',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Events for you",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            children: [
              ...events.map((e) {
                return EventCard(
                  header: e['header'],
                  title: e['title'],
                  date: e['date'],
                  attendees: e['attendees'],
                );
              }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: Center(
              child: Text(
                "See all",
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
