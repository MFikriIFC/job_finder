import 'package:flutter/material.dart';
import 'package:job_finder/models/bottom_nav_model.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:job_finder/pages/main_container.dart';
import 'package:job_finder/models/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BNavModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
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
      home: const MainContainer(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
