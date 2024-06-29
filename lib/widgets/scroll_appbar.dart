import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:job_finder/models/themes/theme_provider.dart';
import 'package:job_finder/models/user_model.dart';

class ScrollAppbar extends StatefulWidget {
  const ScrollAppbar({
    super.key,
    required this.body,
    required this.actionIcon,
    required this.actionScreen,
  });

  final Widget body;
  final IconData actionIcon;
  final Widget actionScreen;

  @override
  State<ScrollAppbar> createState() => _ScrollAppbarState();
}

class _ScrollAppbarState extends State<ScrollAppbar> {
  void _changeScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => widget.actionScreen,
      ),
    ); //
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Row(
            children: [
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/${Provider.of<UserModel>(context).getUser()["profile"]}",
                        fit: BoxFit.cover,
                        width: 32,
                        height: 32,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  // print('tes');
                },
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 35, // Set the height to your desired value
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Theme.of(context).colorScheme.background,
                            color:
                                Provider.of<ThemeProvider>(context).isDarkMode
                                    ? Colors.grey.shade900
                                    : const Color.fromARGB(255, 238, 243, 247),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search jobs',
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
              )),
              const SizedBox(
                width: 16,
              ),
              IconButton(
                  onPressed: _changeScreen,
                  icon: Icon(
                    widget.actionIcon,
                    color: Theme.of(context).iconTheme.color,
                  ))
            ],
          ),
        )
      ],
      body: widget.body,
    );
  }
}
