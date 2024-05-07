import 'package:flutter/material.dart';
import 'package:job_finder/widgets/chatting/new_message_row.dart';

class NewMessage extends StatelessWidget {
  const NewMessage({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: const [
            Text(
              'Suggested',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                NewMessageRow(
                    userImg:
                        'https://akcdn.detik.net.id/community/media/visual/2024/01/27/shin-tae-yong_169.jpeg?w=600&q=90',
                    userName: 'Shin Tae Young',
                    userDesc: 'Indonesia Football coach')
              ],
            )
          ],
        ),
      ),
    );
  }
}
