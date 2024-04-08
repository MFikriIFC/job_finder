import 'package:flutter/material.dart';
// import 'package:job_finder/pages/home_page.dart';
import 'package:job_finder/pages/jobs/job_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Myriad",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 10, 102, 194),
        ),
      ),
      home: const JobPage(),
    );
  }
}
