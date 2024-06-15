import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  bool isLogin = false;
  bool verif = true;
  bool already = false;
  bool berhasil = false;
  List<Map<String, dynamic>> listUsers = [
    {
      "name": "1",
      "email": "1",
      "password": "1",
      "profile": "default.png",
      "pronoun": "He/Him",
      "user_skill": "Front End React Developer",
    },
    {
      "name": "M. Fikri",
      "email": "muhammadfikri4402@gmail.com",
      "password": "password",
      "profile": "fikri.jpeg",
      "pronoun": "He/Him",
      "user_skill": "Front End React Developer",
    },
    {
      "name": "Go Youn Jung",
      "email": "gyj",
      "password": "gyj",
      "profile": "gyt.png",
      "pronoun": "She/Her",
      "user_skill": "Full Stack Developer",
    },
    {
      "name": "Freya Jayawardana",
      "email": "freya",
      "password": "freya",
      "profile": "freya.jpg",
      "pronoun": "She/Her",
      "user_skill": "Senyum Karamel",
    }
  ];

  Map<String, dynamic> user = {
    "name": "",
    "email": "",
    "password": "",
    "profile": "default.png",
    "pronoun": "~/~",
    "user_skill": "~",
  };

  bool getLogin(String email, String password) {
    print(email);
    print(password);
    print(listUsers);
    List<Map<String, dynamic>> hasil = listUsers
        .where((element) =>
            element["email"] == email && element["password"] == password)
        .toList();
    if (hasil.isNotEmpty) {
      isLogin = true;
      verif = true;
      user = hasil[0];
      notifyListeners();
      print(true);
      return true;
    } else {
      print(false);
      verif = false;
      notifyListeners();
      return false;
    }
  }

  void addUser(String name, String email, String password) {
    List<Map<String, dynamic>> hasil =
        listUsers.where((element) => element["email"] == email).toList();
    if (hasil.isEmpty) {
      listUsers.add(
        {
          "name": name,
          "email": email,
          "password": password,
          "profile": "default.png",
          "pronoun": "~/~",
          "user_skill": "~",
        },
      );

      already = false;
      berhasil = true;

      notifyListeners();
    } else {
      already = true;
      berhasil = false;
      notifyListeners();
    }
  }

  Map<String, dynamic> getUser() {
    return user;
  }

  void logout() {
    isLogin = false;
    notifyListeners();
  }

  void setBerhasil() {
    already = false;
    berhasil = false;
    notifyListeners();
  }

  bool getStatus() {
    if (!already && berhasil) {
      return true;
    } else {
      return false;
    }
  }

  bool getLoginStatus() {
    print("is login" + isLogin.toString());
    return isLogin;
  }
}
