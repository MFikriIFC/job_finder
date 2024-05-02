import 'package:flutter/material.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Post Page"),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
