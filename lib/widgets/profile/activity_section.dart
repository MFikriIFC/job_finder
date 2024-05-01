import 'package:flutter/material.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Activity",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "1.5M Followers",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue.shade900),
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12)),
                    child: Text(
                      "Create a post",
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.create_outlined, color: Colors.grey.shade700),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "You haven't posted yet",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const Text("Posts you share will be displayed here."),
          const SizedBox(
            height: 12,
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
                    text: "Show all activity ",
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
