import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter name',
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
                Icons.person,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.chat_rounded),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: ClipOval(
                child: Image.asset(
                  "assets/images/profile/sule.jpeg",
                  // fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header"),
            ),
            ListTile(
              leading: Image.network(
                  "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
              title: const Text("Home"),
              selected: true,
            )
          ],
        ),
      ),
      body: const Text('tes'),
    );
  }
}