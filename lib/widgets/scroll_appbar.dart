import 'package:flutter/material.dart';

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
  void _changeScreen (){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => widget.actionScreen,
      ),
    ); // 
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        floatHeaderSlivers: true, //to show appbar instanly after scrolling down
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            automaticallyImplyLeading: false, //remove drawer burger icon
            scrolledUnderElevation: 0, //prevent appbar bg change when scroll
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
                          "assets/images/profile/sule.jpeg",
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(width: 16,),
                Expanded(
                  child: GestureDetector(
                          onTap: () {
                            // print('tes');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255,238, 243, 247),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                children: [
                                  Icon(Icons.search, color: Theme.of(context).iconTheme.color,),
                                  const SizedBox(width: 8.0),
                                  const Text('Search jobs', style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                          ),
                        )

                ),
                const SizedBox(width: 16,),
                IconButton(
                  onPressed: _changeScreen, 
                  icon: Icon(widget.actionIcon,color: Theme.of(context).iconTheme.color,)
                )
              ],
            ),
          )],
          body: widget.body,
        );
  }
}