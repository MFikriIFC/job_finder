import "package:flutter/material.dart";
import "package:job_finder/pages/chatting/chatting_page.dart";
import "package:job_finder/pages/home/home_page.dart";
import "package:job_finder/pages/jobs/job_page.dart";
import "package:job_finder/pages/network/network_page.dart";
import "package:job_finder/pages/notification/notification_page.dart";
import "package:job_finder/pages/profile/profile.dart";

class PageModel extends ChangeNotifier {
  int _homeIndex = 0;
  final List<Widget> _home = [
    const HomePage(),
    const Profile(),
    const ChattingPage(),
  ];
  int _networkIndex = 0;
  final List<Widget> _network = [
    const NetworkPage(),
    const Profile(),
    const ChattingPage(),
  ];
  int _notificationIndex = 0;
  final List<Widget> _notification = [
    NotificationPage(),
    const Profile(),
    const ChattingPage(),
  ];
  int _jobIndex = 0;
  final List<Widget> _job = [
    const JobPage(),
    const Profile(),
    const ChattingPage(),
  ];

  Widget getHomePage() {
    return _home[_homeIndex];
  }

  void setHome(int index) {
    _homeIndex = index;
    _networkIndex = 0;
    _notificationIndex = 0;
    _jobIndex = 0;
    notifyListeners();
  }

  Widget getNetworkPage() {
    return _network[_networkIndex];
  }

  void setNetwork(int index) {
    _networkIndex = index;
    _homeIndex = 0;
    _notificationIndex = 0;
    _jobIndex = 0;
    notifyListeners();
  }

  Widget getNotificationPage() {
    return _notification[_notificationIndex];
  }

  void setNotification(int index) {
    _notificationIndex = index;
    _networkIndex = 0;
    _homeIndex = 0;
    _jobIndex = 0;
    notifyListeners();
  }

  Widget getJobPage() {
    return _job[_jobIndex];
  }

  void setJob(int index) {
    _jobIndex = index;
    _networkIndex = 0;
    _homeIndex = 0;
    _notificationIndex = 0;
    notifyListeners();
  }

  void resetIndex() {
    _homeIndex = 0;
    _networkIndex = 0;
    _notificationIndex = 0;
    _jobIndex = 0;
    notifyListeners();
  }
}
