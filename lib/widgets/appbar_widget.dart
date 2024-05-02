import 'package:flutter/material.dart';

class ScrollAppbar extends StatelessWidget {
  const ScrollAppbar({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true, //to show appbar instanly after scrolling down
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          automaticallyImplyLeading: false, //remove drawer burger icon
          scrolledUnderElevation: 0, //prevent appbar bg change when scroll
          title: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: ClipOval(
                        child: Image.network(
                          "https://media.licdn.com/dms/image/D5603AQHiurAb7d24ng/profile-displayphoto-shrink_800_800/0/1680149648357?e=1718236800&v=beta&t=yuxNamHnXL0Ka-gRv1htaGTbq03YMzqsEfoCfj42Crw",
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
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
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 238, 243, 247),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            const SizedBox(width: 8.0),
                            const Text(
                              'Search...',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.chat,
                  color: Theme.of(context).iconTheme.color,
                ),
              ],
            ),
          ),
        ),
      ],
      body: body,
    );
  }
}
