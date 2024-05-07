import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/footer_card.dart';
import 'package:job_finder/widgets/profile/molecules/resource_item.dart';

class ResourceSection extends StatelessWidget {
  const ResourceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Resources",
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
          const ResourceItem(
            leadingIcon: Icons.people_alt,
            title: "My Network",
            subtitle: "See and manage your connections and interests.",
          ),
          const Divider(
            height: 2,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const ResourceItem(
            leadingIcon: Icons.bookmark_outlined,
            title: "My Items",
            subtitle: "Keep track of your jobs, courses, and articles.",
          ),
          const Divider(
            height: 2,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const SizedBox(
            height: 12,
          ),
          const FooterCard(
            text: "Show all 4 Resources ",
            footerIcon: Icons.arrow_forward,
          ),
        ],
      ),
    );
  }
}
