import 'package:flutter/material.dart';

class ChatDataProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _chatData = [
    {
      "userImg": 'ssss.jpeg',
      "userName": "Sumatra Sarana Sekar Sakti",
      "lastText":
          "Hi juga pak Jordan. Terima kasih untuk kesempatan yang bapak berikan, kalau boleh tau, apa saja ya kriteria kriteria yang harus dipenuhi untuk posisi ini ya?",
      "lastDate": "2023-06-15T12:10:00",
      "you": true
    },
    {
      "userImg": 'botak.jpeg',
      "userName": "Deddy Corbuzier",
      "lastText": "Gimana bro, jadi lamar di fit hub?",
      "lastDate": "2023-06-13T06:00:00",
      "you": false
    },
    {
      "userImg": 'topremit.png',
      "userName": "Topremit",
      "lastText": "Halo Go Youn Jung, ada loker ni, mau gak?",
      "lastDate": "2023-11-15T10:00:00",
      "you": false
    }
  ];

  final List<Map<String, dynamic>> _userList = [
    {
      "userImg": 'ssss.jpeg',
      "userName": "Sumatra Sarana Sekar Sakti",
      "userDesc": "SSSS Company",
    },
    {
      "userImg": 'botak.jpeg',
      "userName": "Deddy Corbuzier",
      "userDesc": "Masa gk kenal bro",
    },
    {
      "userImg": 'topremit.jpeg',
      "userName": "Topremit",
      "userDesc": "Finance company",
    },
    {
      "userImg": 'sty.jpeg',
      "userName": "Shin Tae Young",
      "userDesc": "Indonesia Football coach",
    },
  ];

  final Map<String, List<Map<String, dynamic>>> _chatHistory = {
    "Sumatra Sarana Sekar Sakti": [
      {
        "sender": "Sumatra Sarana Sekar Sakti",
        "message":
            "Hi Pak Sutisna, ini di saya HRD dari SSSS dan ingin menginfokan kalau kami sedang mencar seorang Frontend Developer dan saya tertarik dengan profile bapak",
        "time": "2023-06-15T12:05:00",
      },
      {
        "sender": "Me",
        "message":
            "Hi juga pak Jordan. Terima kasih untuk kesempatan yang bapak berikan, kalau boleh tau, apa saja ya kriteria kriteria yang harus dipenuhi untuk posisi ini ya?",
        "time": "2023-06-15T12:10:00",
      },
    ],
    "Deddy Corbuzier": [
      {
        "sender": "Deddy Corbuzier",
        "message": "Ada loker ni di fit hub sebagai chef",
        "time": "2023-06-13T11:00:00",
      },
      {
        "sender": "Me",
        "message": "Nanti liat dulu deh.",
        "time": "2023-06-13T11:05:00",
      },
      {
        "sender": "Deddy Corbuzier",
        "message": "Gimana bro, jadi lamar di fit hub?",
        "time": "2023-06-13T06:00:00",
      },
    ],
    "Topremit": [
      {
        "sender": "Topremit",
        "message": "Halo Go Youn Jung, ada loker ni, mau gak?",
        "time": "2023-11-15T10:00:00",
      },
    ],
  };

  List<Map<String, dynamic>> get chatData => _chatData;
  List<Map<String, dynamic>> get userList => _userList;

  void addOrUpdateChat(String userImg, String userName, BuildContext context) {
    int chatDataIndex =
        _chatData.indexWhere((chat) => chat['userName'] == userName);
    String currentTime = DateTime.now().toIso8601String();

    if (chatDataIndex == -1) {
      _chatData.add({
        'userImg': userImg,
        'userName': userName,
        'lastText': '',
        'lastDate': currentTime,
        'you': false,
      });
    } else {
      _chatData[chatDataIndex]['lastDate'] = currentTime;
    }

    notifyListeners();
  }

  List<Map<String, dynamic>> getChatHistory(String userName) {
    return _chatHistory[userName] ?? [];
  }

  void addMessage(String userName, Map<String, dynamic> message) {
    // Add message to chat history
    if (_chatHistory.containsKey(userName)) {
      _chatHistory[userName]!.add(message);
    } else {
      _chatHistory[userName] = [message];
    }

    // Update last message in chat data
    int chatDataIndex =
        _chatData.indexWhere((chat) => chat['userName'] == userName);
    if (chatDataIndex != -1) {
      _chatData[chatDataIndex]['lastText'] = message['message'];
      _chatData[chatDataIndex]['lastDate'] = message['time'];
      _chatData[chatDataIndex]['you'] =
          message['sender'] == 'Me'; // Update 'you' field
    }

    // Sort _chatData by lastDate
    _chatData.sort((a, b) => b['lastDate'].compareTo(a['lastDate']));

    notifyListeners();
  }
}
