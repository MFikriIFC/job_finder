import 'package:flutter/material.dart';
import 'package:job_finder/pages/chatting/new_message.dart';
import 'package:job_finder/widgets/chatting/chatting_page_filter.dart';
import 'package:job_finder/widgets/chatting/chatting_row.dart';
import 'package:provider/provider.dart';
import 'package:job_finder/models/themes/theme_provider.dart';
import 'package:job_finder/providers/chat_data_provider.dart';
import 'dart:async';

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

  Future<List<Widget>> _fetchChattingRows(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    var chatData = Provider.of<ChatDataProvider>(context, listen: false).chatData;

    // Sort the data by lastDate (latest date first)
    chatData.sort((a, b) => DateTime.parse(b['lastDate']).compareTo(DateTime.parse(a['lastDate'])));

    return chatData.map((e) {
      return Column(
        children: [
          ChattingRow(
            key: UniqueKey(),
            userImg: e['userImg'],
            userName: e['userName'],
            lastText: e['lastText'],
            lastDate: e['lastDate'],
            you: e['you'],
          ),
          Divider(
            height: 32,
            color: Theme.of(context).colorScheme.outline,
          ),
        ],
      );
    }).toList();
  }

  Future<void> _refreshChattingRows() async {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).iconTheme.color,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 35,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Provider.of<ThemeProvider>(context).isDarkMode
                          ? Colors.grey.shade900
                          : const Color.fromARGB(255, 238, 243, 247),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search messages',
                        hintStyle: const TextStyle(fontSize: 16),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                            color: Theme.of(context).iconTheme.color),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: _openChattingPageFilter,
              icon: Icon(
                Icons.filter_list,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            IconButton(
              onPressed: _refreshChattingRows,
              icon: Icon(
                Icons.refresh,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
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
              child: FutureBuilder<List<Widget>>(
                future: _fetchChattingRows(context),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error fetching data: ${snapshot.error}'),
                    );
                  } else {
                    return ListView(
                      children: snapshot.data ?? [],
                    );
                  }
                },
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: const Icon(Icons.create),
        ),
      ),
    );
  }
}
