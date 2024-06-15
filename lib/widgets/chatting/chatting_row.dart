import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/pages/chatting/chatting_page_view.dart';
import 'package:intl/intl.dart';

class ChattingRow extends StatefulWidget {
  const ChattingRow({
    super.key,
    required this.userImg,
    required this.userName,
    required this.lastText,
    required this.lastDate,
    required this.you,
  });

  final String userImg;
  final String userName;
  final String lastText;
  final String lastDate;
  final bool you;

  @override
  State<ChattingRow> createState() => _ChattingRowState();
}

class _ChattingRowState extends State<ChattingRow> {
  void _changeScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ChattingPageView(
          userImg: widget.userImg,
          userName: widget.userName,
        ),
      ),
    );
  }

  String _formatDate(String dateString) {
    DateTime date = DateTime.parse(dateString);
    return DateFormat('MMM d, yyyy, h:mm a').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeScreen();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              widget.userImg,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.userName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Text(
                            _formatDate(widget.lastDate),
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.you ? 'You : ' : ''),
                          Expanded(
                            child: Text(
                              widget.lastText,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
