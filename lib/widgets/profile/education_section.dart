import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/education_item.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Education",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Icon(Icons.add, color: Colors.grey.shade700),
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
          const EducationItem(
            educationProfile: "assets/images/mikroskil.png",
            educationPlace: "Universital Mikroskil",
            majority: "Informatic Engineering",
            educationLongevity: "Sep 2022 - Jun 2026",
          ),
          const Divider(
            height: 32,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const EducationItem(
            educationProfile: "assets/images/sutomo.png",
            educationPlace: "SMA Sutomo 1",
            majority: "Secondary High School",
            educationLongevity: "Jul 2019 - Apr 2022",
          ),
        ],
      ),
    );
  }
}
