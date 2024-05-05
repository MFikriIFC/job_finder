import 'package:flutter/material.dart';
import 'package:job_finder/pages/home/home_container.dart';
import 'package:job_finder/pages/jobs/job_container.dart';
import 'package:job_finder/pages/network/network_container.dart';
import 'package:job_finder/pages/notification/notification_container.dart';
import 'package:job_finder/pages/post/post_page.dart';

class BNavModel extends ChangeNotifier {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeContainer(),
    const NetworkContainer(),
    const PostPage(),
    NotificationContainer(),
    const JobContainer(),
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
