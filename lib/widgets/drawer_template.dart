import 'package:flutter/material.dart';

class DrawerTemplate extends StatelessWidget {
  final setIndex;
  DrawerTemplate({super.key, required this.setIndex});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white, // Set the background color here
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/profile/sule.jpeg",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Sutisna',
                      style: TextStyle(
                          height: 1, fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: setIndex,
                      child: Text(
                        'View profile',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .color),
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
                              color: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .color),
                        )
                      ],
                    )
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Events",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                ListTile(
                    leading: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(231, 163, 62, 1),
                        borderRadius: BorderRadius.circular(
                            3), // You can adjust the radius value as needed
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
