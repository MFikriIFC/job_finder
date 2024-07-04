import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/jobs/appbar_button.dart';
import 'package:job_finder/widgets/jobs/hiring_in_network.dart';
import 'package:job_finder/widgets/jobs/recent_search_item.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';
import 'package:provider/provider.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  bool _showBanner = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: ScrollAppbar(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      AppBarButton(text: 'My jobs'),
                      SizedBox(
                        width: 12,
                      ),
                      AppBarButton(text: 'Preferences'),
                      SizedBox(
                        width: 12,
                      ),
                      AppBarButton(text: 'Post a free job'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    children: [
                      if (_showBanner)
                        MaterialBanner(
                          dividerColor: Colors.transparent,
                          backgroundColor: Colors.blue[50],
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Set up job alerts, and get notified about the latest job openings.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8.0),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF006394),
                                    foregroundColor: Colors.white,
                                  ),
                                  child: const Text("Create a job alert"),
                                ),
                              ),
                            ],
                          ),
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xFF006394),
                            child: Icon(Icons.info, color: Colors.white),
                          ),
                          actions: [
                            IconButton(
                              icon:
                                  const Icon(Icons.close, color: Colors.black),
                              onPressed: () {
                                setState(() {
                                  _showBanner = false;
                                });
                              },
                            ),
                          ],
                          padding: const EdgeInsets.all(16),
                        ),
                      // Other content of your screen
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Recent Searches',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            'Clear',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const RecentSearchItem(
                          position: "Chef",
                          location: "Indonesia",
                          newJob: "1 New"),
                      Divider(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      const RecentSearchItem(
                          position: "Frontend dev",
                          location: "India",
                          newJob: "14 New"),
                      Divider(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      const RecentSearchItem(
                          position: "Racer",
                          location: "England",
                          newJob: "200 New"),
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 10,
                  color: Theme.of(context).colorScheme.outline,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/gyt.png",
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
                              "See the full list of jobs where you'd be a top applicant",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 248, 191, 106),
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
                Divider(
                  height: 30,
                  thickness: 10,
                  color: Theme.of(context).colorScheme.outline,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Hiring in your network',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Explore relevant jobs in your network',
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      children: [
                        HiringInNetwork(
                            companyImg: "ssss.jpeg",
                            position: 'Frontend Developer',
                            companyName: 'Sumatra Sarana Sekar Sakti',
                            location: 'Medan, Indonesia',
                            workSetup: '(On-site)',
                            mutualImg: 'andre.webp',
                            mutualAmount: 1,
                            timePosted: '6 months ago'),
                        HiringInNetwork(
                            companyImg: "topremit.png",
                            position: 'Chef',
                            companyName: 'Topremit',
                            location: 'Greater Medan',
                            workSetup: '(On-site)',
                            mutualImg: 'andre.webp',
                            mutualAmount: 1,
                            timePosted: '1 week ago'),
                        HiringInNetwork(
                            companyImg: "fithub.png",
                            position: 'Fitness Manager',
                            companyName: 'FIT HUB',
                            location: 'Jakarta, Indonesia',
                            workSetup: '(On-site)',
                            mutualImg: 'botak.jpeg',
                            mutualAmount: 1,
                            timePosted: '2 weeks ago'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Show all "),
                          Icon(
                            Icons.arrow_right_alt_sharp,
                            size: 18,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Divider(
                  height: 30,
                  thickness: 10,
                  color: Theme.of(context).colorScheme.outline,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text('Top job picks for you',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
                // Divider(
                //   height: 30,
                //   thickness: 10,
                //   color: Theme.of(context).colorScheme.outline,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/koper.png',
                          width: 92,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text('Want more jobs?'),
                        const Text(
                            "Search for jobs and we'll serve recommendations that match your criteria"),
                        const SizedBox(
                          height: 32,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Search jobs',
                              style: TextStyle(color: Colors.blue.shade900),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actionIcon: Icons.chat,
          actionScreen: const ChattingPage(),
        ),
      ),
      drawer: DrawerTemplate(
        setIndex: () =>
            Provider.of<PageModel>(context, listen: false).setJob(1),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
