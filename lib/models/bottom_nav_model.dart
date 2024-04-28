import 'package:flutter/material.dart';
import 'package:job_finder/pages/home_page.dart';
import 'package:job_finder/pages/jobs_page.dart';
import 'package:job_finder/pages/network_page.dart';
import 'package:job_finder/pages/notification_page.dart';
import 'package:job_finder/pages/post_page.dart';

class BNavModel extends ChangeNotifier {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const NetworkPage(),
    const PostPage(),
    NotificationPage(),
    const JobsPage(),
  ];

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Widget getPage() {
    return _pages[_selectedIndex];
  }

  int getIndex() {
    return _selectedIndex;
  }
}
