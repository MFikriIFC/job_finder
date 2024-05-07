import 'package:flutter/material.dart';

class EducationItem extends StatelessWidget {
  const EducationItem({
    super.key,
    required this.educationProfile,
    required this.educationPlace,
    required this.majority,
    required this.educationLongevity,
  });

  final String educationProfile;
  final String educationPlace;
  final String majority;
  final String educationLongevity;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          educationProfile,
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
              educationPlace,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text(
              majority,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              educationLongevity,
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ],
    );
  }
}
