import 'package:flutter/material.dart';
import 'package:job_finder/pages/chatting_page.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ScrollAppbar(body: Text('tes'),
          actionIcon: Icons.chat,
          actionScreen: ChattingPage(),
        ),
        drawer: DrawerTemplate(),
        bottomNavigationBar: MyButtomNavBar());
  }
}
