import 'package:flutter/material.dart';
import 'package:job_finder/widgets/home/header_timeline.dart';

class CardTimeLine extends StatelessWidget {
  const CardTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderTimeLine(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS-b518sO-hr6_AQAJA_hnpeLR7AtI3CgEGcmP7nLUJA&s",
                width: 100,
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      child: Text(
                        "Introduction to programming in Kotlin | Google Developer Profile | Google for Developers",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
                    ),
                  ],
                ),
              )
            ],
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
                        "462 impressions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "View",
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
    );
  }
}
