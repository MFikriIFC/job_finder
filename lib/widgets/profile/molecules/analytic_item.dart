import 'package:flutter/material.dart';

class AnalyticItem extends StatelessWidget {
  const AnalyticItem({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
  });

  final IconData leadingIcon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        leadingIcon,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
            fontSize: 14, color: Theme.of(context).colorScheme.inversePrimary),
      ),
    );
  }
}
