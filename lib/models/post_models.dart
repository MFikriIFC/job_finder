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
      "userData": {
        "name": "M. Fikri",
        "email": "muhammadfikri4402@gmail.com",
        "password": "password",
        "profile": "fikri.jpeg",
        "pronoun": "He/Him",
        "user_skill": "Front End React Developer",
      },
      "for": "Anyone",
    },
    {
      "desc":
          "I have complited an Introduction to programming concepts in Kotlin to prepare for creating Android application in Kotlin.",
      "tag": ["#AndroidBasics", "#JuaraAndroid"],
      "likes": 100,
      "like": true,
      "time": "1 jam",
      "impressions": 100,
      "user": "Go Youn Jung",
      "userData": {
        "name": "Go Youn Jung",
        "email": "gyj",
        "password": "gyj",
        "profile": "gyt.png",
        "pronoun": "She/Her",
        "user_skill": "Full Stack Developer",
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

  void addPost(Map<String, dynamic> user, String desc, List tag) {
    allPost.add({
      "desc": desc,
      "tag": tag,
      "likes": 0,
      "like": false,
      "time": "Now",
      "impressions": 0,
      "userData": user,
      "for": _for,
    });
    notifyListeners();
  }
}
