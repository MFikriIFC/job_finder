import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/models/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:job_finder/pages/profile/profile.dart';

class DrawerTemplate extends StatefulWidget {
  const DrawerTemplate({super.key});

  @override
  State<DrawerTemplate> createState() => _DrawerTemplateState();
}

class _DrawerTemplateState extends State<DrawerTemplate> {
  void _changeScreen(screen) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => screen,
      ),
    );
  }

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
              height: 240,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/gyt.png",
                        fit: BoxFit.cover,
                        width: 96,
                        height: 96,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Go Youn Jung',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _changeScreen(const Profile());
                      },
                      child: Text(
                        'View profile',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary,
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
                              color: Theme.of(context).colorScheme.primary),
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
                const ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
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
