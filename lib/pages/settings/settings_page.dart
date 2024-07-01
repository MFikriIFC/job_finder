import 'package:flutter/material.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          ),
        ],
      ),
      body: Consumer<UserModel>(
        builder: (context, value, child) => ListView(
          children: [
            ListTile(
              leading: ClipOval(
                child: Image.asset(
                  "assets/images/${value.getUser()["profile"]}",
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
              title: const Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.person,
                size: 36,
              ),
              title: Text(
                "Account preferences",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.lock,
                size: 36,
              ),
              title: Text(
                "Sign in & security",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.remove_red_eye,
                size: 36,
              ),
              title: Text(
                "Visibility",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.security,
                size: 36,
              ),
              title: Text(
                "Data privacy",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.newspaper,
                size: 36,
              ),
              title: Text(
                "Advertising data",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.notifications,
                size: 36,
              ),
              title: Text(
                "Notification",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const Divider(
              indent: 18,
              endIndent: 18,
            ),
            const ListTile(
              title: Text(
                "Help Center",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "Professional Community Policies",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "Privacy Policy",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "Accessibility",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "Recomendation Transparency",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "User Agreement",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "End User License Agreement",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                value.logout();
              },
              title: const Text(
                "Sign Out",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const ListTile(
              title: Text(
                "VERSION: 9.29.8561",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
