import 'package:flutter/material.dart';
import 'package:job_finder/widgets/network/molecules/suggestion_card.dart';

class SuggestionSection extends StatelessWidget {
  SuggestionSection({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> suggestions = [
    {
      'name': 'Windah Basudara',
      'title': 'Bangkit Academy 2024 Batch 1 Machine Learning Expert',
      'mutualConnections': 20,
      'profileImageUrl': 'assets/images/windah.jpg',
      'backgroundUrl': 'assets/images/patrick.jpg',
    },
    {
      'name': 'Aldean Tegar',
      'title': 'Computer Lab Assistant',
      'mutualConnections': 12,
      'profileImageUrl': 'assets/images/deankt.webp',
      'backgroundUrl': 'assets/images/wavyBG.jpg',
    },
    {
      'name': 'Shani Indira',
      'title': 'Student at BINUS University',
      'mutualConnections': 3,
      'profileImageUrl': 'assets/images/shani.webp',
      'backgroundUrl': 'assets/images/linkedinDefaultBG.png',
    },
    {
      'name': 'Shania Gracia',
      'title': 'Student at City University of Hong Kong',
      'mutualConnections': 4,
      'profileImageUrl': 'assets/images/gracia.jpg',
      'backgroundUrl': 'assets/images/linkedinDefaultBG.png',
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
            "People you may know from Universitas Mikroskil",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.1,
            children: suggestions.map((e) {
              return SuggestionCard(
                name: e['name'],
                title: e['title'],
                mutualConnections: e['mutualConnections'],
                profileImageUrl: e['profileImageUrl'],
                backgroundUrl: e['backgroundUrl'],
              );
            }).toList(),
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
          )
        ],
      ),
    );
  }
}
