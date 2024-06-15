import 'package:flutter/material.dart';

class ChatDataProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _chatData = [
    {
      "userImg":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY2_6n1KvFhEmhVfB0vU3KeW75RIFMtKMfT6leeqyoQ&s',
      "userName": "Sumatra Sarana Sekar Sakti",
      "lastText":
          "Hi juga pak Jordan. Terima kasih untuk kesempatan yang bapak berikan, kalau boleh tau, apa saja ya kriteria kriteria yang harus dipenuhi untuk posisi ini ya?",
      "lastDate": "2023-06-15T12:10:00",
      "you": true
    },
    {
      "userImg":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxCWIZ7DJcuvrs-ck07PxK4TZQiHLZB12fpwLvkPOdWw&s',
      "userName": "Deddy Corbuzier",
      "lastText": "Gimana bro, jadi lamar di fit hub?",
      "lastDate": "2023-06-13T06:00:00",
      "you": false
    },
    {
      "userImg":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhxhOwtI3TkbGrxuxgCr-0l1vXyW9x_6RfopdDcnlMaA&s',
      "userName": "Topremit",
      "lastText": "Halo Go Youn Jung, ada loker ni, mau gak?",
      "lastDate": "2023-11-15T10:00:00",
      "you": false
    }
  ];

  final List<Map<String, dynamic>> _userList = [
    {
      "userImg":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY2_6n1KvFhEmhVfB0vU3KeW75RIFMtKMfT6leeqyoQ&s',
      "userName": "Sumatra Sarana Sekar Sakti",
      "userDesc": "SSSS Company",
    },
    {
      "userImg":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxCWIZ7DJcuvrs-ck07PxK4TZQiHLZB12fpwLvkPOdWw&s',
      "userName": "Deddy Corbuzier",
      "userDesc": "Masa gk kenal bro",
    },
    {
      "userImg":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhxhOwtI3TkbGrxuxgCr-0l1vXyW9x_6RfopdDcnlMaA&s',
      "userName": "Topremit",
      "userDesc": "Finance company",
    },
    {
      "userImg":
          'https://akcdn.detik.net.id/community/media/visual/2024/01/27/shin-tae-yong_169.jpeg?w=600&q=90',
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
      _chatData[chatDataIndex]['you'] = message['sender'] == 'Me'; // Update 'you' field
    }

    // Sort _chatData by lastDate
    _chatData.sort((a, b) => b['lastDate'].compareTo(a['lastDate']));

    notifyListeners();
  }
}
