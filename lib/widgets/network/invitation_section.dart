import 'package:flutter/material.dart';
import 'package:job_finder/widgets/network/molecules/network_invitation.dart';

class InvitationSection extends StatelessWidget {
  const InvitationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Invitations",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_rounded),
                color: Theme.of(context).colorScheme.inversePrimary,
                iconSize: 18,
              ),
            ],
          ),
        ),
        Divider(
          height: 4,
          thickness: 1,
          color: Theme.of(context).colorScheme.outline,
        ),
        const NetworkInvitation(
          name: "Freya Jayawardana",
          title: "Founder of Ambatron | Data Analyst Expert",
          mutualConnections: 15,
          timeAgo: "5 days ago",
          profileImageUrl: "assets/images/freya.jpeg",
        ),
        const NetworkInvitation(
          name: "Marsha Lenathea",
          title: "Social Media Expert | Fans Service Provider",
          mutualConnections: 89,
          timeAgo: "6 days ago",
          profileImageUrl: "assets/images/marsha.jpeg",
        ),
      ],
    );
  }
}
