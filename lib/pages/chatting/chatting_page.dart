import 'package:flutter/material.dart';
import 'package:job_finder/pages/chatting/new_message.dart';
import 'package:job_finder/widgets/chatting/chatting_page_filter.dart';
import 'package:job_finder/widgets/chatting/chatting_row.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  void _openChattingPageFilter() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const ChattingPageFilter(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Search messages',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
          actions: [
            IconButton(
                onPressed: _openChattingPageFilter,
                icon: Icon(
                  Icons.filter_list,
                  color: Theme.of(context).iconTheme.color,
                )),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Focused'),
              ),
              Tab(
                child: Text('Other'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  const ChattingRow(
                      userImg:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY2_6n1KvFhEmhVfB0vU3KeW75RIFMtKMfT6leeqyoQ&s',
                      userName: 'Sumatra Sarana Sekar Sakti',
                      lastText:
                          'Hi juga pak Jordan. Terima kasih untuk kesempatan yang bapak berikan, kalau boleh tau, apa saja ya kriteria kriteria yang harus dipenuhi untuk posisi ini ya?',
                      lastDate: 'Fri',
                      you: true),
                  Divider(
                    height: 32,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const ChattingRow(
                      userImg:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxCWIZ7DJcuvrs-ck07PxK4TZQiHLZB12fpwLvkPOdWw&s',
                      userName: 'Deddy Corbuzier',
                      lastText: 'Gimana bro, jadi lamar di fit hub?',
                      lastDate: 'Mar 24',
                      you: false),
                  Divider(
                    height: 32,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const ChattingRow(
                      userImg:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhxhOwtI3TkbGrxuxgCr-0l1vXyW9x_6RfopdDcnlMaA&s',
                      userName: 'Topremit',
                      lastText: 'Halo Go Youn Jung, ada loker ni, mau gak?',
                      lastDate: 'Nov 15, 2023',
                      you: false),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/officerakiti.png",
                    width: 200,
                    height: 200,
                  ),
                  const Text(
                    'No messages...yet!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Reach out and start a chat. Great things might happen.',
                    softWrap: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.blue.shade600),
                    ),
                    child: Text(
                      "Start a new message",
                      style: TextStyle(color: Colors.blue.shade600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => const NewMessage()),
            );
          },
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.shade600,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.create),
        ),
      ),
    );
  }
}
