import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChattingPageView extends StatelessWidget {
  const ChattingPageView({
    super.key,
    required this.userImg,
    required this.userName,
  });

  final String userImg;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(83, 140, 140, 140),
            width: 1
          )
        ),
        title: Text(
          userName,
          maxLines: 1, // Limit to 2 lines
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(height: 1,),
        ),
        actions: [
          Icon(Icons.more_vert,color: Theme.of(context).iconTheme.color,),
          const SizedBox(width: 16,),
          Icon(Icons.video_call,color: Theme.of(context).iconTheme.color,),
          const SizedBox(width: 16,),
          Icon(Icons.star_border,color: Theme.of(context).iconTheme.color,)
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
                                  userImg,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    userName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
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
                                child: const Divider()),
                          ),
                          const Text("SEP 14, 2023"),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(left: 20.0,),
                                child: const Divider()),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.network(
                                  userImg,
                                  fit: BoxFit.cover,
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const SizedBox(width: 8,),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          userName,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600
                                          )
                                        ),
                                        const Text(
                                          ' (He/Him) • 11:31 AM',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200
                                          )
                                        )
                                      ],
                                    ),
                                    const Text('Hii Leonardo\n\nSalam kenal saya Jordan, Recruitment Supervisor PT SSSS.\nSaat ini kami lagi nyari kandidat potensial nih untuk posisi Frontend Developer penempatan di Kota Medan.\n\nKira-kira apakah bapak tertarik untuk kesempatan ini?\n\nKalau mau sharing lebih detil lagi jangan sungkan untuk balas pesan ini yaa, Thanks.\n\nBest Regards,\nJordan Pravin')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "assets/images/profile/sule.jpeg",
                                  fit: BoxFit.cover,
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const SizedBox(width: 8,),
                              const Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Sutisna",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600
                                          )
                                        ),
                                        Text(
                                          ' (He/Him) • 11:50 AM',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200
                                          )
                                        )
                                      ],
                                    ),
                                    Text('Hi juga pak Jordan\n\nTerima kasih untuk kesempatan yang bapak berikan, kalau boleh tau, apa saja ya kriteria kriteria yang harus dipenuhi untuk posisi ini ya?')
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
                      top: BorderSide(width: 1.0, color: Color.fromARGB(83, 140, 140, 140)),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: Color.fromARGB(83, 140, 140, 140), // Border color
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),

                    Expanded(
                      child: TextFormField(
                        autocorrect: false,
                        decoration: const InputDecoration(
                          labelText: "Some Text",
                          labelStyle:
                              TextStyle(fontSize: 20.0, color: Colors.white),
                          fillColor: Colors.blue,
                          border: OutlineInputBorder(
                              // borderRadius:
                              //     BorderRadius.all(Radius.zero(5.0)),
                              borderSide: BorderSide(color: Colors.purpleAccent)),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      iconSize: 20.0,
                      onPressed: () {},
                    )
                  ])),
              ],
            ),

    );
  }
}