import 'package:flutter/material.dart';
import 'package:job_finder/widgets/appbar_widget.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScrollAppbar(body: Center(child: Text("Jobs Page"))),
      bottomNavigationBar: MyButtomNavBar(),
    );
  }
}
