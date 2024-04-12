import "package:flutter/material.dart";
import "package:job_finder/widgets/bottom_navbar.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        title: const SizedBox(
          height: 70,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "M.Fikri .....",
                border: OutlineInputBorder(),
                hintStyle: TextStyle(
                  fontSize: 15,
                ),
                fillColor: Colors.grey,
                focusColor: Colors.grey,
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  "https://tl.uis.ac.id/wp-content/uploads/2023/09/blank-profile-picture.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: const MyButtomNavBar(),
    );
  }
}
