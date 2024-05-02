import 'package:flutter/material.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/jobs/appbar_button.dart';
import 'package:job_finder/widgets/jobs/hiring_in_network.dart';
import 'package:job_finder/widgets/jobs/recent_search_item.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollAppbar(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    AppBarButton(text: 'My jobs'),
                    SizedBox(
                      width: 10,
                    ),
                    AppBarButton(text: 'Preferences'),
                    SizedBox(
                      width: 10,
                    ),
                    AppBarButton(text: 'Post a free job'),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                thickness: 15,
                color: Color.fromARGB(255, 244, 242, 238),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Recent searches',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text(
                          'Clear',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .color),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const RecentSearchItem(
                        position: "Chef",
                        location: "Indonesia",
                        newJob: "1 new"),
                    const Divider(),
                    const RecentSearchItem(
                        position: "Frontend dev",
                        location: "India",
                        newJob: "14 new"),
                    const Divider(),
                    const RecentSearchItem(
                        position: "Racer",
                        location: "England",
                        newJob: "200 new"),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                thickness: 10,
                color: Color.fromARGB(255, 244, 242, 238),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/profile/sule.jpeg",
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "See the full list of jobs where youd'd be a top applicant",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 248, 191, 106),
                                  foregroundColor: Colors.black),
                              child: const Text('Try Premium for IDR0')),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '1-day free trial. Cancel anytime.',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .color),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 30,
                thickness: 10,
                color: Color.fromARGB(255, 244, 242, 238),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Hiring in your network',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Explore relevant jobs in your network',
                      style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayMedium!.color),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Column(
                    children: [
                      HiringInNetwork(
                          companyImg:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY2_6n1KvFhEmhVfB0vU3KeW75RIFMtKMfT6leeqyoQ&s",
                          position: 'Frontend Developer',
                          companyName: 'Sumatra Sarana Sekar Sakti',
                          location: 'Medan, Indonesia',
                          workSetup: '(On-site)',
                          mutualImg:
                              'https://thumb.viva.co.id/media/frontend/tokoh/2017/10/16/59e4500ae2296-andre-taulany3_216_287.jpg',
                          mutualAmount: 1,
                          timePosted: '6 months ago'),
                      HiringInNetwork(
                          companyImg:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhxhOwtI3TkbGrxuxgCr-0l1vXyW9x_6RfopdDcnlMaA&s",
                          position: 'Chef',
                          companyName: 'Topremit',
                          location: 'Greater Medan',
                          workSetup: '(On-site)',
                          mutualImg:
                              'https://thumb.viva.co.id/media/frontend/tokoh/2017/10/16/59e4500ae2296-andre-taulany3_216_287.jpg',
                          mutualAmount: 1,
                          timePosted: '1 week ago'),
                      HiringInNetwork(
                          companyImg:
                              "https://d3g5ywftkpzr0e.cloudfront.net/wp-content/uploads/2023/04/12113212/FIT-HUB-Logo.png",
                          position: 'Fitness Manager',
                          companyName: 'FIT HUB',
                          location: 'Jakarta, Indonesia',
                          workSetup: '(On-site)',
                          mutualImg:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxCWIZ7DJcuvrs-ck07PxK4TZQiHLZB12fpwLvkPOdWw&s',
                          mutualAmount: 1,
                          timePosted: '2 weeks ago'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your onPressed function here
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Show all "),
                        Icon(Icons.arrow_right_alt_sharp, size: 18),
                      ],
                    ),
                  ),
                ]),
              ),
              const Divider(
                height: 30,
                thickness: 10,
                color: Color.fromARGB(255, 244, 242, 238),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text('Top job picks for you',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                ),
              ),
              const Divider(
                height: 30,
                thickness: 10,
                color: Color.fromARGB(255, 244, 242, 238),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                child: Expanded(
                  child: Column(
                    children: [
                      Image.network(
                          'https://static.licdn.com/aero-v1/sc/h/e7ufxrklstvt6scuvejy6t4sx'),
                      const Text('Want more jobs?'),
                      const Text(
                          "Search for jobs and we'll server recommendations that match your criteria"),
                      const SizedBox(
                        height: 32,
                      ),
                      TextButton(
                          onPressed: () {}, child: const Text('Search jobs'))
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 10,
                color: Color.fromARGB(255, 244, 242, 238),
              ),
            ],
          ),
        ),
        actionIcon: Icons.chat,
        actionScreen: const ChattingPage(),
      ),
      drawer: const DrawerTemplate(),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
