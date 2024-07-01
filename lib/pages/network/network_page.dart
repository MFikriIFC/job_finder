import 'package:flutter/material.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/network/invitation_section.dart';
import 'package:job_finder/widgets/network/suggestion_section.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';
import 'package:provider/provider.dart';

class NetworkPage extends StatelessWidget {
  const NetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(
        setIndex: () =>
            Provider.of<PageModel>(context, listen: false).setNetwork(1),
      ),
      body: SafeArea(
        top: true,
        child: ScrollAppbar(
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Manage my network",
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
                height: 24,
                thickness: 8,
                color: Theme.of(context).colorScheme.outline,
              ),
              InvitationSection(),
              Divider(
                height: 24,
                thickness: 8,
                color: Theme.of(context).colorScheme.outline,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Achieve your goals faster with Premium",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.clear),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          iconSize: 18,
                        )
                      ],
                    ),
                    Text(
                      "See who's viewed your profile and directly message members outside your network.",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade700,
                      ),
                      child: const Text("Try premium for IDR 0"),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "1-month free trial. Cancel anytime",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 24,
                thickness: 8,
                color: Theme.of(context).colorScheme.outline,
              ),
              SuggestionSection(),
              Divider(
                height: 24,
                thickness: 8,
                color: Theme.of(context).colorScheme.outline,
              ),
            ],
          ),
          actionIcon: Icons.chat,
          actionScreen: const ChattingPage(),
        ),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
