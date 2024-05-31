import "package:flutter/material.dart";
import "package:job_finder/models/pages_model.dart";
import "package:job_finder/widgets/profile/about_section.dart";
import "package:job_finder/widgets/profile/activity_section.dart";
import "package:job_finder/widgets/profile/analytic_section.dart";
import "package:job_finder/widgets/profile/biodata_section.dart";
import "package:job_finder/widgets/profile/education_section.dart";
import "package:job_finder/widgets/profile/experience_section.dart";
import "package:job_finder/widgets/profile/interest_section.dart";
import "package:job_finder/widgets/profile/profile_img_section.dart";
import "package:job_finder/widgets/profile/resource_section.dart";
import "package:provider/provider.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Provider.of<PageModel>(context, listen: false).resetIndex();
          },
        ),
        title: const Text("Profile"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileImgSection(
              profileImg: "assets/images/gyt.png",
              backgroundHeaderImg: "assets/images/patrick.jpg",
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.create_outlined),
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )
                ],
              ),
            ),
            const BiodataSection(
              name: "Go Youn Jung",
              pronouns: "She/Her",
              headline:
                  'Well-known Actress on South Korea || Watch "Death Game" on Netflix || Student at Universitas Mikroskil',
              jobs: "Gold Medalist • TVN Company",
              region: "Seoul, Gyeonggi, South Korea",
              connectionCount: "999+",
            ),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            const AnalyticSession(),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            const ResourceSection(),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            const AboutSection(),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            const ActivitySection(),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            ExperienceSection(),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            const EducationSection(),
            Divider(
              height: 24,
              thickness: 8,
              color: Theme.of(context).colorScheme.outline,
            ),
            const InterestSection(),
          ],
        ),
      ),
    );
  }
}
