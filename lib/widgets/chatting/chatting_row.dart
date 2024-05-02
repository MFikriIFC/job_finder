import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/pages/chatting/chatting_page_view.dart';

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
    ); //
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeScreen();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.network(
              widget.userImg,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            widget.userName,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(widget.lastDate)
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.you ? 'You: ' : ''),
                          Expanded(
                            child: Text(
                              widget.lastText,
                              maxLines: 2, // Limit to 2 lines
                              overflow: TextOverflow.ellipsis,
                              // style: const  TextStyle(height: 1,),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 32,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
