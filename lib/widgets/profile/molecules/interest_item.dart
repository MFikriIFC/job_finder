import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  const InterestItem({
    super.key,
    required this.interestProfile,
    required this.interestPlace,
    required this.followersCount,
  });

  final String interestProfile;
  final String interestPlace;
  final String followersCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          interestProfile,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              interestPlace,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text(
              "$followersCount Followers",
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: Colors.blue.shade600,
                size: 16,
              ),
              label: Text(
                "Following",
                style: TextStyle(color: Colors.blue.shade600, fontSize: 14),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue.shade600),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 0)),
            ),
          ],
        ),
      ],
    );
  }
}
