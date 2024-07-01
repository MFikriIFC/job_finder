import 'package:flutter/material.dart';
import 'package:job_finder/widgets/home/header_timeline.dart';

class CardTimeLine extends StatelessWidget {
  final bool isLoading;

  final Map<String, dynamic> data;
  const CardTimeLine({super.key, required this.isLoading, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HeaderTimeLine(isLoading: isLoading, data: data),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["desc"],
                ),
                const SizedBox(
                  height: 20,
                ),
                ...data["tag"].map(
                  (e) {
                    if (e != "") {
                      return Text(
                        e,
                        style: TextStyle(
                          color: Colors.blue.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                )
              ],
            ),
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
              Text(data["likes"].toString()),
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
                      color: data["like"]
                          ? Colors.blue.shade600
                          : Theme.of(context).colorScheme.inversePrimary,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(
                          color: data["like"]
                              ? Colors.blue.shade600
                              : Theme.of(context).colorScheme.inversePrimary),
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
