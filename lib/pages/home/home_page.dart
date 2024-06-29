import 'package:flutter/material.dart';
import 'package:job_finder/models/pages_model.dart';
import 'package:job_finder/models/post_models.dart';
import 'package:job_finder/pages/chatting/chatting_page.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';
import 'package:job_finder/widgets/home/card_timeline.dart';
import 'package:job_finder/widgets/drawer_template.dart';
import 'package:job_finder/widgets/scroll_appbar.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  void _simulateLoading() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      _isLoading = false;
    });
  }

  void setIndex() {
    Provider.of<PageModel>(context, listen: false).setHome(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(setIndex: setIndex),
      bottomNavigationBar: const MyButtomNavBar(),
      body: SafeArea(
        top: true,
        child: ScrollAppbar(
          body: _isLoading ? _buildSkeleton() : _buildContent(),
          actionIcon: Icons.chat,
          actionScreen: const ChattingPage(),
        ),
      ),
    );
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
        child: Consumer<PostProvider>(
      builder: (context, value, child) => ListView(
        children: value.allPost
            .map((e) => CardTimeLine(
                  isLoading: _isLoading,
                  data: e,
                ))
            .expand(
              (widget) => [
                widget,
                Divider(
                  height: 24,
                  thickness: 8,
                  color: Theme.of(context).colorScheme.outline,
                ),
              ],
            )
            .toList(),
      ),
    ));
  }

  Widget _buildContent() {
    return Consumer<PostProvider>(
      builder: (context, value, child) => ListView(
        children: [
          ...value.getPost().map(
                (e) => Column(
                  children: [
                    CardTimeLine(
                      data: e,
                      isLoading: _isLoading,
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
    );
  }
}
