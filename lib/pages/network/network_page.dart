import 'package:flutter/material.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/drawer_template.dart';
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
      body: const SafeArea(
        top: true,
        child: ScrollAppbar(
          body: Center(
            child: Text("Network Page"),
          ),
          actionIcon: Icons.chat,
          actionScreen: ChattingPage(),
        ),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
