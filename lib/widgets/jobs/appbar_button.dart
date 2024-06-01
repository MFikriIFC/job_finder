import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Add your onPressed function here
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 1, color: Color.fromARGB(255, 140, 140, 140)), 
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      child: Text(text),
    );
  }
}