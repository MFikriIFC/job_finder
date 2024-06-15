import 'package:flutter/material.dart';
import 'package:job_finder/pages/chatting/chatting_page_view.dart';
import 'package:job_finder/widgets/chatting/new_message_row.dart';
import 'package:provider/provider.dart';
import 'package:job_finder/providers/chat_data_provider.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({Key? key}) : super(key: key);

  void _startChat(BuildContext context, String userImg, String userName) {
    final chatProvider = Provider.of<ChatDataProvider>(context, listen: false);
    chatProvider.addOrUpdateChat(userImg, userName, context);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ChattingPageView(userImg: userImg, userName: userName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatDataProvider>(context);
    final userList = chatProvider.userList;

    // Sort userList by userName
    userList.sort((a, b) => a['userName'].compareTo(b['userName']));

    return Scaffold(
      appBar: AppBar(
        title: const Text('New message'),
        scrolledUnderElevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a name',
                      hintStyle: TextStyle(fontSize: 16),
                      border: InputBorder.none,
                      prefixIcon: Text('To: '),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: ListView(
          children: [
            const Text(
              'Suggested',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: userList.map((user) {
                return NewMessageRow(
                  userImg: user['userImg'],
                  userName: user['userName'],
                  userDesc: user['userDesc'],
                  onTap: () => _startChat(context, user['userImg'], user['userName']),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
