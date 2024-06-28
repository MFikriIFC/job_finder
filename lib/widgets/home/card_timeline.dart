import 'package:flutter/material.dart';
import 'package:job_finder/widgets/home/header_timeline.dart';

class CardTimeLine extends StatelessWidget {
  final bool isLoading;

  const CardTimeLine({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HeaderTimeLine(isLoading: isLoading),
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
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "#JuaraAndroid",
                style: TextStyle(
                  color: Colors.blue.shade600,
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
              Image.asset(
                "assets/images/gdev.webp",
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 8,
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
                        Text(
                          "developers.google.com",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Visibility(
                          visible: !isLoading,
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "bacaan 1 menit",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.thumb_up_alt_outlined, color: Colors.blue.shade600),
              const SizedBox(
                width: 4,
              ),
              const Text("150"),
            ],
          ),
        ),
        Column(
          children: [
            Visibility(
              visible: !isLoading,
              child: Divider(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.blue.shade600,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(color: Colors.blue.shade600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text("Comment")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text("Share")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.send,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text("Send"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.bar_chart_sharp,
                        size: 14,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "462 impressions",
                      )
                    ],
                  ),
                  Text(
                    "View",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue.shade600,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
