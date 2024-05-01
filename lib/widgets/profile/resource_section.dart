import 'package:flutter/material.dart';
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
                    color: Colors.grey.shade700,
                  ),
                ),
                TextSpan(
                  text: " Private to you",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade700,
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
          const Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Show all 4 Resources ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
