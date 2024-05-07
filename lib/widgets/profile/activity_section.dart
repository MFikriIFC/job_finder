import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/footer_card.dart';

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
                      color: Colors.blue.shade600,
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
                        side: BorderSide(color: Colors.blue.shade600),
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12)),
                    child: Text(
                      "Create a post",
                      style: TextStyle(color: Colors.blue.shade600),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.create_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary),
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
          const FooterCard(
              text: "Show All Activity", footerIcon: Icons.arrow_forward),
        ],
      ),
    );
  }
}
