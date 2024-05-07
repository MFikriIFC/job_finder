import 'package:flutter/material.dart';

class BiodataSection extends StatelessWidget {
  const BiodataSection({
    super.key,
    required this.name,
    required this.pronouns,
    required this.headline,
    required this.jobs,
    required this.region,
    required this.connectionCount,
  });

  final String name;
  final String pronouns;
  final String headline;
  final String jobs;
  final String region;
  final String connectionCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
                text: name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: " ($pronouns)",
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.normal),
                  )
                ]),
          ),
          const SizedBox(
            height: 4,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue.shade700),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            ),
            icon: Icon(
              Icons.verified_rounded,
              color: Colors.blue.shade700,
            ),
            label: Text(
              "Verify Now",
              style: TextStyle(color: Colors.blue.shade700),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            headline,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            jobs,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            region,
            style: TextStyle(
                fontSize: 14, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "$connectionCount Connections",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blue.shade700,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade700,
                    elevation: 0,
                  ),
                  child: const Text(
                    "Open to",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue.shade700),
                  ),
                  child: Text(
                    "Add Section",
                    style: TextStyle(color: Colors.blue.shade700),
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
