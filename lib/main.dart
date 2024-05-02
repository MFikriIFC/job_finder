import 'package:flutter/material.dart';
import 'package:job_finder/models/bottom_nav_model.dart';
import 'package:job_finder/pages/container_page.dart';
import 'package:provider/provider.dart';
import 'package:job_finder/pages/authentication/login_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BNavModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: false,
        fontFamily: "Myriad",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 10, 102, 194),
        ),

        iconTheme: const IconThemeData(
          // Set the default icon color here
          color: Color.fromARGB(255, 102, 102, 102),
        ),

        textTheme: const TextTheme(
          displayMedium: TextStyle(
            color: Color.fromARGB(
                255, 165, 165, 165), // Set secondary text color here
          ),
        ),
      ),
      home: const Login(),
    );
  }
}
