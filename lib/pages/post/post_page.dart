import 'package:flutter/material.dart';
import 'package:job_finder/models/post_models.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final List<Map<String, dynamic>> _pilihan = [
    {"text": "Anyone", "icon": Icons.public},
    {"text": "Connections", "icon": Icons.person},
    {"text": "Group", "icon": Icons.group},
  ];

  @override
  Widget build(BuildContext context) {
    final TextEditingController _postController = TextEditingController();
    final TextEditingController _tagController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
        top: true,
        child: Consumer<PostProvider>(
          builder: (context, value, child) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 36,
                          ),
                        ),
                        ClipOval(
                          child: Image.asset(
                            "assets/images/${Provider.of<UserModel>(context).getUser()["profile"]}",
                            fit: BoxFit.cover,
                            width: 38,
                            height: 38,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        PopupMenuButton(
                          child: Row(
                            children: [
                              Text(value.getFor()),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                          onSelected: (String txt) => {value.changeFor(txt)},
                          itemBuilder: (context) => <PopupMenuEntry<String>>[
                            ..._pilihan.map(
                              (e) => PopupMenuItem<String>(
                                value: e["text"],
                                child: ListTile(
                                  title: Text(e["text"]),
                                  leading: Icon(e["icon"]),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        value.addPost(
                          Provider.of<UserModel>(context, listen: false)
                              .getUser(),
                          _postController.text,
                          _tagController.text.split(','),
                        );
                        Navigator.pop(context);
                      },
                      child: const Text("Post"),
                      // style: ButtonStyle(backgroundColor: ),
                    )
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        minLines: 5,
                        maxLines: 10,
                        controller: _postController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                            ),
                          ),

                          // label: Text("Title*"),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0),
                          hintText: "Type here....",
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        minLines: 1,
                        maxLines: 3,
                        controller: _tagController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            borderSide: BorderSide(
                              width: 1,
                            ),
                          ),
                          label: Text("Tag #"),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12.0),
                          hintText: "Separated by comma...",
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
