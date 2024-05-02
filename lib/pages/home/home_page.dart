import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/widgets/appbar_widget.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/home/card_timeline.dart';
import 'package:job_finder/widgets/drawer_template.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Drawer Header"),
              ),
              ListTile(
                leading: Image.network(
                    "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: const Text("Home"),
                selected: true,
              )
            ],
          ),
        ),
        bottomNavigationBar: const MyButtomNavBar(),
        body: const ScrollAppbar(
          body: Column(children: const [CardTimeLine()]),
        ));
  }
}
