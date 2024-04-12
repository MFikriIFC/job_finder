import 'package:flutter/material.dart';

class DrawerTemplate extends StatelessWidget {
  const DrawerTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}