import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/interest_item.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Interest",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 12,
          ),
          InterestItem(
            interestProfile: "assets/images/pertamina.webp",
            interestPlace: "PT. Pertamina Persero",
            followersCount: "2,264,321",
          ),
          Divider(
            height: 32,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          InterestItem(
            interestProfile: "assets/images/bca.png",
            interestPlace: "Bank BCA",
            followersCount: "1,889,102",
          ),
        ],
      ),
    );
  }
}
