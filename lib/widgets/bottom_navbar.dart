import "package:flutter/material.dart";

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int _index = 0;

  void _onTap(int index) {
    setState(() {
      _index = index;
    });
  }

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
      currentIndex: _index,
      onTap: _onTap,
    );
  }
}
