import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/analytic_item.dart';
import 'package:job_finder/widgets/profile/molecules/footer_card.dart';

class AnalyticSession extends StatelessWidget {
  const AnalyticSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Analytics",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.remove_red_eye,
                    size: 14,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                TextSpan(
                  text: " Private to you",
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
          const AnalyticItem(
            leadingIcon: Icons.people_alt,
            title: "99+ Profile Views",
            subtitle: "Discover who's viewed your profile.",
          ),
          const Divider(
            height: 2,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const AnalyticItem(
            leadingIcon: Icons.bar_chart_outlined,
            title: "99+ Post Impressions",
            subtitle: "Start a post to increase engagement.",
          ),
          const Divider(
            height: 2,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const AnalyticItem(
            leadingIcon: Icons.search_outlined,
            title: "99+ Search Appearances",
            subtitle: "See how often you appear in search results.",
          ),
          const Divider(
            height: 2,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const SizedBox(
            height: 12,
          ),
          const FooterCard(
            text: "Show all Analytics ",
            footerIcon: Icons.arrow_forward,
          )
        ],
      ),
    );
  }
}
