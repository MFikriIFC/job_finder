import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:job_finder/pages/authentication/login_page.dart';
import 'package:job_finder/pages/authentication/register_page.dart';
=======
import 'package:job_finder/pages/profile.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
>>>>>>> origin/profile

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home Page",
            style: TextStyle(),
          ),
          centerTitle: true,
        ),
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
              ),
              ListTile(
                leading: Image.network(
                    "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: const Text("Profile"),
                selected: true,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Profile();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
<<<<<<< HEAD
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
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
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              leading: const Icon(Icons.login),
              title: const Text("Login"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Register()));
              },
              leading: const Icon(Icons.login),
              title: const Text("Register"),
            ),
          ],
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Without Custom Font",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "With Custom Font",
            style: TextStyle(
              fontSize: 40,
              fontFamily: "Myriad",
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
=======
        bottomNavigationBar: const MyButtomNavBar());
>>>>>>> origin/profile
  }
}
