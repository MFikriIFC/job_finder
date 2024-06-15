import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:job_finder/providers/chat_data_provider.dart';
import 'package:intl/intl.dart';

class ChattingPageView extends StatefulWidget {
  const ChattingPageView({
    super.key,
    required this.userImg,
    required this.userName,
  });

  final String userImg;
  final String userName;

  @override
  State<ChattingPageView> createState() => _ChattingPageViewState();
}

class _ChattingPageViewState extends State<ChattingPageView> {
  bool _isTyping = false;
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.isEmpty) return;

    Provider.of<ChatDataProvider>(context, listen: false).addMessage(
      widget.userName,
      {
        "sender": "Me",
        "message": _messageController.text,
        "time": DateTime.now().toString(),
      },
    );

    // Clear the text field after sending message
    _messageController.clear();

    // Optional: Set _isTyping to false if needed
    _isTyping = false;
  }


  
  

  String _formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    return DateFormat('MMM d, yyyy, h:mm a').format(date);
  }
  
  @override
  Widget build(BuildContext context) {
    final chatHistory = Provider.of<ChatDataProvider>(context).getChatHistory(widget.userName);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const Border(
            bottom: BorderSide(color: Color.fromARGB(83, 140, 140, 140), width: 1)),
        title: Text(
          widget.userName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.video_call,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 16,
          ),
          Icon(
            Icons.star_border,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: chatHistory.map((chat) {
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.network(
                        chat["sender"] == "Me"
                            ? "assets/images/gyt.png"
                            : widget.userImg,
                        fit: BoxFit.cover,
                        width: 32,
                        height: 32,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(chat["sender"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500)),
                              Text(' • ${_formatDate(chat["time"])}',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary))
                            ],
                          ),
                          Text(chat["message"])
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          )),
          Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 1.0, color: Color.fromARGB(83, 140, 140, 140)),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: const Color.fromARGB(
                          83, 140, 140, 140), // Border color
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10), // Set horizontal margin
                    child: TextFormField(
                      controller: _messageController,
                      onChanged: (value) {
                        setState(() {
                          _isTyping = value.isNotEmpty;
                        });
                      },
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Write a message...",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: const Color.fromARGB(
                            255, 244, 242, 238), // Background color
                        border: InputBorder.none, // Remove the border
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: _isTyping
                      ? const Icon(Icons.send)
                      : const Icon(Icons.mic),
                  iconSize: 20.0,
                  onPressed: _sendMessage,
                )
              ])),
        ],
      ),
    );
  }
}
