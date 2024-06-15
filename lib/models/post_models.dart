import 'package:flutter/material.dart';

class PostProvider extends ChangeNotifier {
  List<Map<String, dynamic>> allPost = [
    {
      "desc":
          "I have complited an Introduction to programming concepts in Kotlin to prepare for creating Android application in Kotlin.",
      "tag": ["#AndroidBasics", "#JuaraAndroid"],
      "likes": 150,
      "like": true,
      "time": "6 bln",
      "impressions": 462,
      "user": "M. Fikri",
      "pronoun": "He/Him",
      "status": "Teman Anda",
      "user_skill": "Front End React Developer",
      "userData": {
        "name": "M. Fikri",
        "email": "muhammadfikri4402@gmail.com",
        "password": "password",
        "profile": "fikri.jpeg",
      },
      "for": "Anyone",
    },
    {
      "desc":
          "I have complited an Introduction to programming concepts in Kotlin to prepare for creating Android application in Kotlin.",
      "tag": ["#AndroidBasics", "#JuaraAndroid"],
      "likes": 150,
      "like": true,
      "time": "1 jam",
      "impressions": 462,
      "user": "Go Youn Jung",
      "pronoun": "She/Her",
      "status": "Anda",
      "user_skill": "Full Stack Developer",
      "profile": "gyt.png",
      "userData": {
        "name": "Go Youn Jung",
        "email": "gyj",
        "password": "gyj",
        "profile": "gyt.png",
      },
      "for": "Anyone",
    },
  ];

  String _for = "Anyone";

  List<Map<String, dynamic>> getPost() {
    return allPost;
  }

  void changeFor(String txt) {
    _for = txt;
    notifyListeners();
  }

  String getFor() {
    return _for;
  }
}
