import "package:flutter/material.dart";
import "package:job_finder/models/bottom_nav_model.dart";
import "package:provider/provider.dart";
import "package:job_finder/pages/jobs/job_page.dart";

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
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      currentIndex: Provider.of<BNavModel>(context).getIndex(),
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => {
        Provider.of<BNavModel>(context, listen: false).setSelectedIndex(value)
      },
    );
  }
}
