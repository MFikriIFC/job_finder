import 'package:flutter/material.dart';

class FooterCard extends StatelessWidget {
  const FooterCard({
    super.key,
    required this.text,
    required this.footerIcon,
  });

  final String text;
  final IconData footerIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: text,
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w500),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                footerIcon,
                size: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
