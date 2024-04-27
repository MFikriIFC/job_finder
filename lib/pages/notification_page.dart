import 'package:flutter/material.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Notification Page"),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
