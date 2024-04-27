import 'package:flutter/material.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';

class NetworkPage extends StatelessWidget {
  const NetworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Network Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Network Page"),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
