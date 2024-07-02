import 'package:flutter/material.dart';

class NetworkInvitation extends StatelessWidget {
  final String name;
  final String title;
  final int mutualConnections;
  final String timeAgo;
  final String profileImageUrl;

  const NetworkInvitation({
    required this.name,
    required this.title,
    required this.mutualConnections,
    required this.timeAgo,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(profileImageUrl),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
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
                  "$mutualConnections mutual connections",
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Text(
                  timeAgo,
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 18,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear),
                    color: Colors.black,
                    iconSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 18,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.check),
                    color: Colors.blue.shade900,
                    iconSize: 18,
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
