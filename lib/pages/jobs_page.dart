import 'package:flutter/material.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jobs Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Jobs Page"),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
