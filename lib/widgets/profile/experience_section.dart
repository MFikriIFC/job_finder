import 'package:flutter/material.dart';
import 'package:job_finder/widgets/profile/molecules/add_experience_dialog.dart';
import 'package:job_finder/widgets/profile/molecules/experience_item.dart';

class ExperienceSection extends StatefulWidget {
  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  final List<Map<String, dynamic>> dataExperience = [
    {
      "companyProfile": "assets/images/tvn.jpg",
      "jobPosition": "Professional Actress",
      "companyName": "TvN Company",
      "workingPeriodeType": "Part-time",
      "jobLongevity": "Nov 2014 - Present",
      "companyRegion": "Seoul, Gyeonggi, South Korea",
      "otherInfo":
          "• Versatile Performer: Captivating audiences with versatile roles and depth in each performance.\n• Impactful Storyteller: Shedding light on social issues and sparking conversations through cinematic narratives.",
      "skills":
          "Facial Expressions, Emotional Intelligence, Voice Control, Character Analysis"
    },
    {
      "companyProfile": "assets/images/goldmedalist.jpg",
      "jobPosition": "Professional Model",
      "companyName": "Gold Medalist",
      "workingPeriodeType": "Part-time",
      "jobLongevity": "Nov 2012 - Present",
      "companyRegion": "Seoul, Gyeonggi, South Korea",
      "otherInfo": "",
      "skills": "Facial Expressions, Emotional Intelligence"
    },
  ];

  void _addExperience(Map<String, dynamic> experienceData) {
    setState(() {
      dataExperience.add(experienceData);
    });
  }

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
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AddExperienceDialog(
                            submitExperience: _addExperience,
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.add,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.create_outlined,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          ...dataExperience.map((experience) {
            return Column(
              children: [
                ExperienceItem(
                  companyProfile: experience['companyProfile'],
                  jobPosition: experience['jobPosition'],
                  companyName: experience['companyName'],
                  workingPeriodeType: experience['workingPeriodeType'],
                  jobLongevity: experience['jobLongevity'],
                  companyRegion: experience['companyRegion'],
                  otherInfo: experience['otherInfo'],
                  skills: experience['skills'],
                ),
                if (dataExperience.indexOf(experience) !=
                    dataExperience.length - 1)
                  const Divider(
                    height: 32,
                    color: Color.fromARGB(255, 244, 242, 238),
                  ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
