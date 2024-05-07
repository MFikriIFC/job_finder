import 'package:flutter/material.dart';

class RecentSearchItem extends StatelessWidget {
  const RecentSearchItem({
    super.key,
    required this.position,
    required this.location,
    required this.newJob,
  });

  final String position;
  final String location;
  final String newJob;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              position,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(location),
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          newJob,
          style: const TextStyle(color: Colors.green),
        )
      ],
    );
  }
}
