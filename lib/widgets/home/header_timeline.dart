import 'package:flutter/material.dart';
import 'package:job_finder/models/user_model.dart';
import 'package:provider/provider.dart';

class HeaderTimeLine extends StatelessWidget {
  final bool isLoading;

  final Map<String, dynamic> data;
  const HeaderTimeLine(
      {super.key, required this.isLoading, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/${data["userData"]["profile"]}",
                  fit: BoxFit.cover,
                  width: 52,
                  height: 52,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      data["userData"]["name"],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      data["userData"]["pronoun"],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Visibility(
                      visible: !isLoading,
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          borderRadius: BorderRadius.circular(99),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      data["userData"]["name"] ==
                              Provider.of<UserModel>(context).getUser()["name"]
                          ? "Anda"
                          : "Orang Lain",
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  data["userData"]["user_skill"],
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      data["time"],
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Visibility(
                      visible: !isLoading,
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          borderRadius: BorderRadius.circular(99),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    const Icon(
                      Icons.public,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Icon(Icons.keyboard_control_rounded),
      ],
    );
  }
}
