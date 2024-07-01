import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String name;
  final String title;
  final int mutualConnections;
  final String profileImageUrl;
  final String backgroundUrl;

  const SuggestionCard({
    required this.name,
    required this.title,
    required this.mutualConnections,
    required this.profileImageUrl,
    required this.backgroundUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 96,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(backgroundUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 12,
                child: CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage(profileImageUrl),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: const Icon(
                    Icons.clear,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '$mutualConnections mutual connections',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue.shade900),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Connect',
                    style: TextStyle(color: Colors.blue.shade900),
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
