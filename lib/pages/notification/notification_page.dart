import 'package:flutter/material.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';

import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';
import 'package:provider/provider.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _index = 1;

  final List<String> filters = ["All", "My Posts", "Mentions"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(
          setIndex: () => Provider.of<PageModel>(context, listen: false)
              .setNotification(1)),
      body: SafeArea(
        top: true,
        child: ScrollAppbar(
          actionIcon: Icons.chat,
          actionScreen: const ChattingPage(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Wrap(
                  spacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: filters.map(
                    (e) {
                      return FilterChip(
                        label: Text(e),
                        selected: filters.indexOf(e) == _index,
                        onSelected: (value) {
                          setState(
                            () {
                              _index = filters.indexOf(e);
                            },
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        showCheckmark: false,
                        selectedColor: Colors.blue.shade900,
                        labelStyle: TextStyle(
                            color: filters.indexOf(e) == _index
                                ? Colors.white
                                : Theme.of(context).colorScheme.inversePrimary),
                      );
                    },
                  ).toList(),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/ai.webp",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "New from ",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                  children: [
                                    TextSpan(
                                      text: "Generative AI ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    TextSpan(
                                        text:
                                            "in The Atlas: 🚀 Time to Add AI to Your Portfolio? 🚀",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                  ],
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("28m"),
                              Icon(
                                Icons.keyboard_control_rounded,
                                color: Theme.of(context).iconTheme.color,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/bumn.jpeg",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "",
                                  children: [
                                    TextSpan(
                                      text: "Rekrutmen Bersama BUMN ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    TextSpan(
                                        text: "posted: ",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                    TextSpan(
                                        text:
                                            "Lowongan Kerja BUMN PT Bank Tabungan Negara (Persero) Tbk (Bank BTN)",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                  ],
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("1h"),
                              Icon(
                                Icons.keyboard_control_rounded,
                                color: Theme.of(context).iconTheme.color,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/coding_ninja.jpeg",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "",
                                  children: [
                                    TextSpan(
                                      text: "Coding Ninjas ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    TextSpan(
                                        text: "posted: ",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                    TextSpan(
                                        text:
                                            "Just like these fighters have fought the circumstances and reached their Destination X - Top Tech Companies like Amazon and Microsoft, you can do it too.",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                  ],
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("1h"),
                              Icon(
                                Icons.keyboard_control_rounded,
                                color: Theme.of(context).iconTheme.color,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/tech_asia.jpeg",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "",
                                  children: [
                                    TextSpan(
                                      text: "Tech in Asia ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    TextSpan(
                                        text: "posted: ",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                    TextSpan(
                                        text:
                                            "[Published in March 2024] 📉 The House votes to potentially force ByteDance to sell TikTok's US assets, stirring widespread concern about the app's future in the market. 💼 Analysts suggest a forced sale might financially benefit ByteDance, possibly enhancing its valuation through a public IPO of TikTok in the US. 📊 Without TikTok, ByteDance may face challenges going public, as it could depend heavily on the Chinese market, potentially reducing its global valuation.  🌏 Ongoing political scrutiny could force TikTok and similar companies to reassess their operational strategies globally, affecting investor confidence and business stability.",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                  ],
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("2h"),
                              Icon(
                                Icons.keyboard_control_rounded,
                                color: Theme.of(context).iconTheme.color,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
