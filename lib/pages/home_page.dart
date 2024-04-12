import 'package:flutter/material.dart';
import 'package:job_finder/pages/profile.dart';
import 'package:job_finder/widgets/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.grey, width: 2)),
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                icon: Image.network(
                  "https://media.licdn.com/dms/image/D5603AQHiurAb7d24ng/profile-displayphoto-shrink_800_800/0/1680149648357?e=1718236800&v=beta&t=yuxNamHnXL0Ka-gRv1htaGTbq03YMzqsEfoCfj42Crw",
                  fit: BoxFit.contain,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            border: InputBorder.none,
            fillColor: Colors.cyan[50],
            filled: true,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.chat),
          )
        ],
        centerTitle: true,
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
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.network(
                              "https://media.licdn.com/dms/image/D5603AQHiurAb7d24ng/profile-displayphoto-shrink_800_800/0/1680149648357?e=1718236800&v=beta&t=yuxNamHnXL0Ka-gRv1htaGTbq03YMzqsEfoCfj42Crw",
                              fit: BoxFit.cover,
                              width: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "M. Fikri",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "(He/Him)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Anda",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "Front-End Developer || React Developer",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "6bln",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.public,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.keyboard_control_rounded),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        // Icon(Icons.close)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "I have complited an introduction to programming concepts in Kotlin to prepare for creating Android applications in Kotlin.",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "#AndroidBasics",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "#JuaraAndroid",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.network(
                "https://media.licdn.com/dms/image/sync/C5627AQHHa9NZDeP0MQ/articleshare-shrink_800/0/1712068696019?e=1713549600&v=beta&t=t7UzqV3rb2ZROTuH6YwFrOG_-HsiKyA7WljID93DQ78",
              ),
              Ink(
                color: Colors.cyan[50],
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Introduction to programming in Kotlin | Google Developer Profile | Google for Developers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text("developers.google.com"),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 3,
                            height: 3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("bacaan 1 menit")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.blue),
                    SizedBox(
                      width: 5,
                    ),
                    Text("150"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Ink(
                      color: Colors.grey,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              "Like",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                        Column(
                          children: [Icon(Icons.comment), Text("Comment")],
                        ),
                        Column(
                          children: [Icon(Icons.share), Text("Share")],
                        ),
                        Column(
                          children: [
                            Icon(Icons.send),
                            Text("Send"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bar_chart_sharp),
                            Text(
                              "462 views",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Visit the Page",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 10,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.grey),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.network(
                              "https://media.licdn.com/dms/image/D5603AQHiurAb7d24ng/profile-displayphoto-shrink_800_800/0/1680149648357?e=1718236800&v=beta&t=yuxNamHnXL0Ka-gRv1htaGTbq03YMzqsEfoCfj42Crw",
                              fit: BoxFit.cover,
                              width: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "M. Fikri",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "(He/Him)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Anda",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "Front-End Developer || React Developer",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "6bln",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.public,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.keyboard_control_rounded),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        // Icon(Icons.close)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "I have complited an introduction to programming concepts in Kotlin to prepare for creating Android applications in Kotlin.",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "#AndroidBasics",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "#JuaraAndroid",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.network(
                "https://media.licdn.com/dms/image/sync/C5627AQHHa9NZDeP0MQ/articleshare-shrink_800/0/1712068696019?e=1713549600&v=beta&t=t7UzqV3rb2ZROTuH6YwFrOG_-HsiKyA7WljID93DQ78",
              ),
              Ink(
                color: Colors.cyan[50],
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Introduction to programming in Kotlin | Google Developer Profile | Google for Developers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text("developers.google.com"),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 3,
                            height: 3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("bacaan 1 menit")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.blue),
                    SizedBox(
                      width: 5,
                    ),
                    Text("150"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Ink(
                      color: Colors.grey,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              "Like",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                        Column(
                          children: [Icon(Icons.comment), Text("Comment")],
                        ),
                        Column(
                          children: [Icon(Icons.share), Text("Share")],
                        ),
                        Column(
                          children: [
                            Icon(Icons.send),
                            Text("Send"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bar_chart_sharp),
                            Text(
                              "462 views",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Visit the Page",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 10,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.grey),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.network(
                              "https://media.licdn.com/dms/image/D5603AQHiurAb7d24ng/profile-displayphoto-shrink_800_800/0/1680149648357?e=1718236800&v=beta&t=yuxNamHnXL0Ka-gRv1htaGTbq03YMzqsEfoCfj42Crw",
                              fit: BoxFit.cover,
                              width: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "M. Fikri",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "(He/Him)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Anda",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "Front-End Developer || React Developer",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "6bln",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.public,
                                  size: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.keyboard_control_rounded),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        // Icon(Icons.close)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "I have complited an introduction to programming concepts in Kotlin to prepare for creating Android applications in Kotlin.",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "#AndroidBasics",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "#JuaraAndroid",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.network(
                "https://media.licdn.com/dms/image/sync/C5627AQHHa9NZDeP0MQ/articleshare-shrink_800/0/1712068696019?e=1713549600&v=beta&t=t7UzqV3rb2ZROTuH6YwFrOG_-HsiKyA7WljID93DQ78",
              ),
              Ink(
                color: Colors.cyan[50],
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Introduction to programming in Kotlin | Google Developer Profile | Google for Developers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text("developers.google.com"),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 3,
                            height: 3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("bacaan 1 menit")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, color: Colors.blue),
                    SizedBox(
                      width: 5,
                    ),
                    Text("150"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Ink(
                      color: Colors.grey,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.blue,
                            ),
                            Text(
                              "Like",
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                        Column(
                          children: [Icon(Icons.comment), Text("Comment")],
                        ),
                        Column(
                          children: [Icon(Icons.share), Text("Share")],
                        ),
                        Column(
                          children: [
                            Icon(Icons.send),
                            Text("Send"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bar_chart_sharp),
                            Text(
                              "462 views",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Visit the Page",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
