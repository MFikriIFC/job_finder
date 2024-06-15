import 'package:flutter/material.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/models/post_models.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/home/card_timeline.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void setIndex() => {
        Provider.of<PageModel>(context, listen: false).setHome(1),
      };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(setIndex: setIndex),
      bottomNavigationBar: const MyButtomNavBar(),
      body: SafeArea(
        top: true,
        child: ScrollAppbar(
          body: SingleChildScrollView(
              child: Consumer<PostProvider>(
            builder: (context, value, child) => Column(
              children: [
                ...value.getPost().map(
                      (e) => Column(
                        children: [
                          CardTimeLine(
                            data: e,
                          ),
                          Divider(
                            height: 24,
                            thickness: 8,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          )),
          actionIcon: Icons.chat,
          actionScreen: const ChattingPage(),
        ),
      ),
    );
  }
}
