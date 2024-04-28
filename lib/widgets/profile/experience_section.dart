import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/experience_item.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Experience",
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
          const ExperienceItem(
            companyProfile: "assets/images/tvn.jpg",
            jobPosition: "Professional Actress",
            companyName: "TvN Company",
            workingPeriodeType: "Part-time",
            jobLongevity: "Nov 2014 - Present • 9 yrs 6 mos",
            companyRegion: "Seoul, Gyeonggi, South Korea",
            otherInfo:
                "Description :\n• Versatile Performer: Captivating audiences with versatile roles and depth in each performance.\n• Impactful Storyteller: Shedding light on social issues and sparking conversations through cinematic narratives.",
            skills:
                "Facial Expressions, Emotional Intelligence, Voice Control, Character Analysis",
          ),
          const Divider(
            height: 32,
            color: Color.fromARGB(255, 244, 242, 238),
          ),
          const ExperienceItem(
            companyProfile: "assets/images/goldmedalist.jpg",
            jobPosition: "Professional Model",
            companyName: "Gold Medalist",
            workingPeriodeType: "Part-time",
            jobLongevity: "Nov 2012 - Present • 11 yrs 6 mos",
            companyRegion: "Seoul, Gyeonggi, South Korea",
            skills: "Facial Expressions, Emotional Intelligence",
          ),
        ],
      ),
    );
  }
}
