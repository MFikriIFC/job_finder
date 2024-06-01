import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const Border(
            bottom:
                BorderSide(color: Color.fromARGB(83, 140, 140, 140), width: 1)),
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
              children: <Widget>[
                Padding(
                  padding: const EdgeInsetsDirectional.all(16),
                  child: Column(
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
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(widget.userName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500)),
                          const Text(' (He/Him)')
                        ],
                      ),
                    ],
                  ),
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(right: 20.0),
                        child: Divider(
                          color: Theme.of(context).colorScheme.outline,
                        )),
                  ),
                  const Text(
                    "SEP 14, 2023",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Divider(
                          color: Theme.of(context).colorScheme.outline,
                        )),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.network(
                          widget.userImg,
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
                          children: [
                            Row(
                              children: [
                                Text(widget.userName,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500)),
                                Text(' (He/Him) • 11:31 AM',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary))
                              ],
                            ),
                            const Text(
                                'Hi Go Youn Jung\n\nSalam kenal saya Coach Shin, Recruitment Supervisor PT SSSS.\nSaat ini kami lagi nyari kandidat potensial nih untuk posisi Frontend Developer penempatan di Kota Medan.\n\nKira-kira apakah bapak tertarik untuk kesempatan ini?\n\nKalau mau sharing lebih detil lagi jangan sungkan untuk balas pesan ini yaa, Thanks.\n\nBest Regards,\nJordan Pravin')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/gyt.png",
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
                          children: [
                            Row(
                              children: [
                                const Text("Go Youn Jung",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500)),
                                Text(' (She/Her) • 11:50 AM',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .inversePrimary))
                              ],
                            ),
                            const Text(
                                'Hi juga pak Jordan\n\nTerima kasih untuk kesempatan yang bapak berikan, kalau boleh tau, apa saja ya kriteria kriteria yang harus dipenuhi untuk posisi ini ya?')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
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
                  onPressed: () {},
                )
              ])),
        ],
      ),
    );
  }
}
