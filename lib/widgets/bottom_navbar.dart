import "package:flutter/material.dart";
import "package:job_finder/models/bottom_nav_model.dart";
import "package:provider/provider.dart";

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people_alt,
          ),
          label: "My Network",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
          ),
          label: "Post",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notification_important_sharp,
          ),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.wallet_travel_outlined,
          ),
          label: "Jobs",
        ),
      ],
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.secondary,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      currentIndex: Provider.of<BNavModel>(context).getIndex(),
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => {
        if (value != 2)
          {
            Provider.of<BNavModel>(context, listen: false)
                .setSelectedIndex(value)
          }
        else
          {
            showDialog(
              context: context,
              builder: (BuildContext context) => Dialog.fullscreen(
                  child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close))
                    ],
                  )
                ],
              )),
            ),
          }
      },
    );
  }
}
