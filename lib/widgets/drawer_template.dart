import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/models/themes/theme_provider.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:job_finder/pages/settings/settings_page.dart';
import 'package:provider/provider.dart';

class DrawerTemplate extends StatelessWidget {
  final setIndex;
  DrawerTemplate({super.key, required this.setIndex});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context)
            .colorScheme
            .background, // Set the background color here
        child: Column(
          children: [
            SizedBox(
              height: 287,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                          "assets/images/${Provider.of<UserModel>(context).getUser()["profile"]}",
                          fit: BoxFit.cover,
                          width: 95,
                          height: 95),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      Provider.of<UserModel>(context).getUser()["name"],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: setIndex,
                      child: Text(
                        'View profile',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Text(
                          '30 ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'profile viewers',
                          style: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
                child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Groups",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Events",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    const Icon(
                      Icons.wb_sunny_outlined,
                      size: 16,
                    ),
                    CupertinoSwitch(
                      value: Provider.of<ThemeProvider>(context, listen: false)
                          .isDarkMode,
                      onChanged: (value) =>
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme(),
                      activeColor: Colors.blue.shade500,
                    ),
                    const Icon(
                      Icons.nights_stay_outlined,
                      size: 16,
                    ),
                  ],
                ),
                const Divider(),
                ListTile(
                    leading: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(231, 163, 62, 1),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    title: const Text(
                      'Try Premium for IDR0',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )),
                ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ),
                      );
                    },
                    leading: const Icon(Icons.settings),
                    title: const Text(
                      'Settings',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
