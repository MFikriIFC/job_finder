import "package:flutter/material.dart";
import "package:job_finder/widgets/bottom_navbar.dart";
import "package:job_finder/widgets/profile/about_section.dart";
import "package:job_finder/widgets/profile/activity_section.dart";
import "package:job_finder/widgets/profile/analytic_section.dart";
import "package:job_finder/widgets/profile/biodata_section.dart";
import "package:job_finder/widgets/profile/education_section.dart";
import "package:job_finder/widgets/profile/experience_section.dart";
import "package:job_finder/widgets/profile/interest_section.dart";
import "package:job_finder/widgets/profile/profile_img_section.dart";
import "package:job_finder/widgets/profile/resource_section.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // toolbarHeight: 100,
      //   title: const SizedBox(
      //     height: 70,
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(vertical: 12),
      //       child: TextField(
      //         decoration: InputDecoration(
      //           prefixIcon: Icon(Icons.search),
      //           hintText: "M.Fikri .....",
      //           border: OutlineInputBorder(),
      //           hintStyle: TextStyle(
      //             fontSize: 15,
      //           ),
      //           fillColor: Colors.grey,
      //           focusColor: Colors.grey,
      //         ),
      //       ),
      //     ),
      //   ),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(Icons.settings),
      //     )
      //   ],
      // ),
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
                    color: Colors.grey.shade700,
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
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const AnalyticSession(),
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const ResourceSection(),
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const AboutSection(),
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const ActivitySection(),
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const ExperienceSection(),
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const EducationSection(),
            const Divider(
              height: 24,
              thickness: 8,
              color: Color.fromARGB(255, 244, 242, 238),
            ),
            const InterestSection(),
          ],
        ),
      ),

      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
