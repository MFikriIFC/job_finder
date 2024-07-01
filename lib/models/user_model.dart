import 'package:flutter/material.dart';
import 'package:job_finder/pages/main_container.dart';

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

  bool getLogin(String email, String password, BuildContext context) {
    List<Map<String, dynamic>> hasil = listUsers
        .where((element) =>
            element["email"] == email && element["password"] == password)
        .toList();
    if (hasil.isNotEmpty) {
      isLogin = true;
      verif = true;
      user = hasil[0];
      print("hasil : ${hasil[0]}");
      notifyListeners();
      return true;
    } else {
      verif = false;
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Login Gagal'),
          content: const Text(
              'Email atau password yang Anda masukkan salah. Silakan coba lagi.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      notifyListeners();
      return false;
    }
  }

  void addUser(
      String name, String email, String password, BuildContext context) {
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

      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Registrasi Berhasil'),
          content: const Text('Akun Anda berhasil dibuat. Selamat datang!'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const MainContainer();
                  },
                ),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      );
      notifyListeners();
    } else {
      already = true;
      berhasil = false;
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Registrasi Gagal'),
          content: const Text(
              'Email yang Anda masukkan sudah terdaftar. Silakan gunakan email lain.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      notifyListeners();
    }
  }

  Map<String, dynamic> getUser() {
    return user;
  }

  void logout() {
    isLogin = false;
    user = {
      "name": "",
      "email": "",
      "password": "",
      "profile": "default.png",
      "pronoun": "~/~",
      "user_skill": "~",
    };
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
    print("status login : ${isLogin}");
    return isLogin;
  }
}
